import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'search_state.dart';

part 'search_cubit.freezed.dart';
part 'search_cubit.g.dart';


@Singleton()
class SearchCubit extends HydratedCubit<SearchState> {
  SearchCubit(this.timetableRepo) : super(const SearchState(listGroupEntity: [], listAuditoriumEntity: [], listLecturerEntity: []));

  final TimetableRepo timetableRepo;


  Future<void> featchGroups()async {
    emit(state.copyWith(asyncSnapshot: AsyncSnapshot.waiting()));
    await timetableRepo.getGroups().then((value){
      Iterable iterable= value;
      emit(state.copyWith(
        listGroupEntity: iterable.map((e) => GroupEntity.fromJson(e)).toList()
      , asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true)
      ));
    });
  }



  @override
  SearchState? fromJson(Map<String, dynamic> json) {
    final state = SearchState.fromJson(json);
    return state;
  }

  @override
  Map<String, dynamic>? toJson(SearchState state) {
    return state.toJson();
  }
}
