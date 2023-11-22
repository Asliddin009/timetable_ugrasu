import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/app/data/grpc/generated/auth.pb.dart';
import 'package:timetable_ugrasu/app/data/grpc/grpc_app_api.dart';
import 'package:timetable_ugrasu/app/utils/get_date_time.dart';
import 'package:timetable_ugrasu/features/auth/domain/auth_state/auth_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetable_ugrasu/features/timetable/domain/utils.dart';

import '../../../../../app/di/init_di.dart';
import '../../../../filter_lessons/domain/cubit/filter_cubit.dart';

part 'timetable_state.dart';

part 'timetable_cubit.freezed.dart';

@Singleton()
class TimetableCubit extends Cubit<TimetableState> {
  TimetableCubit(this.timetableRepo)
      : super(TimetableState(
            lessonsWeek: LessonsWeekEntity(
                list: [],
                todate: DateTime(2023, 1, 3),
                fromdate: DateTime(2023, 23, 22))));
  final TimetableRepo timetableRepo;

  void stateError(Object error) {
    emit(state.copyWith(
        errorText: error.toString(),
        asyncSnapshot:
            AsyncSnapshot.withError(ConnectionState.done, error.toString())));
    addError(error);
  }

  void getTimetable(int groupOid, String fromdate, String todate) async {
    try {
      if (UtilsTimetable.checkMainID(groupOid)) {
        UserRepo userRepo = UserRepo();
        final token = await userRepo.authRpcClient.signIn(UserDto(
          email: 'test5@mail.ru',
          password: 'test5',
        ));
        print("_____________________");
        print(token.accessToken);
        final oldTimetable =
            locator.get<FilterCubit>().getLessonsWeekEntity(fromdate, todate);
        if (oldTimetable != null) {
          emit(state.copyWith(
              lessonsWeek: oldTimetable,
              asyncSnapshot:
                  const AsyncSnapshot.withData(ConnectionState.done, true)));
          return;
        }
      }
      emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
      final value = await timetableRepo.getLessons(
          fromdate: fromdate, todate: todate, groupOid: groupOid);
      Iterable iterable = value;
      LessonsWeekEntity lessonsWeekEntity = LessonsWeekEntity(
          list: iterable
              .map((lessonEntity) => LessonEntity.fromJson(lessonEntity))
              .toList(),
          fromdate: UtilsDate.convertStringToDateTime(fromdate),
          todate: UtilsDate.convertStringToDateTime(todate));
      if (UtilsTimetable.checkMainID(groupOid)) {
        locator.get<FilterCubit>().addTimetable(lessonsWeekEntity);
      }
      emit(state.copyWith(
          lessonsWeek: lessonsWeekEntity,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    } catch (error) {
      stateError(error);
    }
  }
}
