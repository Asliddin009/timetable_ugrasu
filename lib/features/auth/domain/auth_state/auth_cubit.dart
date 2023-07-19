import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../auth_repository.dart';
import '../entities/user_entity/user_entity.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@Singleton()
class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(AuthState.notAuthorized());




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
