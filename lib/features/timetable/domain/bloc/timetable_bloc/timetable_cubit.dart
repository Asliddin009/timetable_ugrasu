import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/app/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_state.dart';

part 'timetable_cubit.freezed.dart';

@Singleton()
class TimetableCubit extends Cubit<TimetableState> {
  TimetableCubit(this.timetableRepo)
      : super(TimetableState(lessonsWeek: LessonsWeekEntity(list: [], todate: DateTime(2023,1,3), fromdate: DateTime(2023,23,22))));
  final TimetableRepo timetableRepo;




  void getTimetable(int groupOid, String fromdate, String todate) {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    timetableRepo
        .getLessons(fromdate: fromdate, todate: todate, groupOid: groupOid)
        .then((value) {
      Iterable iterable = value;
      LessonsWeekEntity lessonsWeekEntity = LessonsWeekEntity(
          list: iterable.map((e) => LessonEntity.fromJson(e)).toList(),
          fromdate: UtilsDate.convertStringToDateTime(fromdate),
          todate:UtilsDate.convertStringToDateTime(todate) );
      emit(state.copyWith(
        lessonsWeek: lessonsWeekEntity,
        asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true)
      ));
    });
  }

}
