import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/app/utils/utils.dart';
import '../entities/user_entity/user_entity.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@Singleton()
class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(AuthState.notAuthorized());

  void finishWelcomeScreen() {
    emit(AuthState.waiting());
    Future.delayed(const Duration(milliseconds: 400)).then((value) =>
        emit(AuthState.authorized(const UserEntity(rootInTimetable: true))));
  }

  void logout() {
    emit(AuthState.waiting());
    Future.delayed(const Duration(milliseconds: 400))
        .then((value) => emit(AuthState.notAuthorized()));
  }

  void addLike(dynamic item) {
    try {
      emit(state.maybeWhen(
          orElse: () => state,
          authorized: (userEntity) {
            List<int> list =
                updateListLikes(List.from(userEntity.listLikes), item);
            return AuthState.authorized(userEntity.copyWith(listLikes: list));
          }));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  void _updateUserState(AsyncSnapshot asyncSnapshot) {
    emit(state.maybeWhen(
      orElse: () => state,
      authorized: (userEntity) {
        return AuthState.authorized(
            userEntity.copyWith(userState: asyncSnapshot));
      },
    ));
  }

  List<int> updateListLikes(List<int> listLikes, dynamic item) {
    int id = Utils.getIdFromEntity(item);
    listLikes.contains(id) ? listLikes.remove(id) : listLikes.add(id);
    return listLikes;
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authorized: (userEntity) => AuthState.authorized(userEntity),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state
            .whenOrNull(
              authorized: (userEntity) => AuthState.authorized(userEntity),
            )
            ?.toJson() ??
        AuthState.notAuthorized().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }
}
