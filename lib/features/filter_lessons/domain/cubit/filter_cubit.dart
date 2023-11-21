import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/get_date_time.dart';
import '../../../timetable/domain/entity/lessons_entity/lessons_entity.dart';

part 'filter_state.dart';

part 'filter_cubit.freezed.dart';

part 'filter_cubit.g.dart';

@Singleton()
class FilterCubit extends HydratedCubit<FilterState> {
  FilterCubit() : super(const FilterState());

  @override
  FilterState? fromJson(Map<String, dynamic> json) {
    final state = FilterState.fromJson(json);
    return state;
  }

  @override
  Map<String, dynamic>? toJson(FilterState state) {
    return state.toJson();
  }

  void addTimetable(LessonsWeekEntity lessonsWeekEntity) {
    var lessons = state.lessonsWeeks;
    if (lessons == null) {
      emit(state.copyWith(lessonsWeeks: [lessonsWeekEntity]));
    return;
    }
    List<LessonsWeekEntity> sortList=[];
    for (var lesson in lessons) {
      if(lesson.todate.day > DateTime.now().day&&lesson.todate.month>=DateTime.now().month){
        sortList.add(lesson);
      }
    }
    emit(state.copyWith(lessonsWeeks: sortList));
  }

  LessonsWeekEntity? getLessonsWeekEntity(String fromDate, String toDate) {
    try {
      return state.lessonsWeeks!.map((lessonWeek) {
        if (fromDate ==
                UtilsDate.convertDateTimeToString(lessonWeek.fromdate) &&
            toDate == UtilsDate.convertDateTimeToString(lessonWeek.todate)) {
          return lessonWeek;
        }
      }).toList()[0];
    } catch (error) {
      log(error.toString());
      return null;
    }
  }

  void stateError(Object error, Emitter emitter) {
    emitter(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    addError(error);
  }
}
