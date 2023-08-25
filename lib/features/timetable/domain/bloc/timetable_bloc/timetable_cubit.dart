import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_state.dart';

part 'timetable_cubit.freezed.dart';

@Singleton()
class TimetableCubit extends Cubit<TimetableState> {
  TimetableCubit(this.timetableRepo)
      : super(const TimetableState(lessonsWeek: LessonsWeekEntity(list: [])));
  final TimetableRepo timetableRepo;




  void getTimetable(int groupOid, String fromdate, String todate) {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    timetableRepo
        .getLessons(fromdate: fromdate, todate: todate, groupOid: groupOid)
        .then((value) {
      Iterable iterable = value;
      LessonsWeekEntity lessonsWeekEntity = LessonsWeekEntity(
          list: iterable.map((e) => LessonEntity.fromJson(e)).toList(),
          fromdate: fromdate,
          todate: todate);
      emit(state.copyWith(
        lessonsWeek: lessonsWeekEntity,
        asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true)
      ));
    });
  }

}
