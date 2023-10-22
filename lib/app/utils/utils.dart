import 'dart:developer';

import 'package:timetable_ugrasu/features/auth/domain/entities/user_entity/user_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/bloc/search_bloc/search_cubit.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

import '../../../features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';
import '../di/init_di.dart';

abstract class Utils {
  static String getTitleFromSearchEntity(dynamic searchEntity) {
    if (searchEntity is GroupEntity) {
      return "Расписание группы ${searchEntity.name}";
    }
    if (searchEntity is LecturerEntity) {
      return "Расписание преподавателя ${searchEntity.fio}";
    }
    if (searchEntity is AuditoriumEntity) {
      return "Расписание аудитории №${searchEntity.number}";
    }
    return ("Группа не найдена");
  }

  static List<dynamic> searchList(
      SearchState state, String value, List<dynamic> list) {
    try {
      List<dynamic> listEntity = [];
      print(value);
      if (value.isEmpty) return list;

      int endLength = value.isEmpty ? 0 : value.length;
      log(endLength.toString());

      for (var group in state.listGroupEntity) {
        String res = group.name.length > endLength
            ? group.name.substring(0, endLength)
            : group.name;
        if (res.toUpperCase() == value.toUpperCase()) {
          listEntity.add(group);
        }
      }

      for (var auditorium in state.listAuditoriumEntity) {
        String res = auditorium.name.length > endLength
            ? auditorium.name.substring(0, endLength)
            : auditorium.name;
        if (res.toUpperCase() == value.toUpperCase()) {
          listEntity.add(auditorium);
        }
      }

      for (var lecture in state.listLecturerEntity) {
        String res = lecture.fio.length > endLength
            ? lecture.fio.substring(0, endLength)
            : lecture.fio;
        if (res.toUpperCase() == value.toUpperCase()) {
          listEntity.add(lecture);
        }
      }

      return listEntity;
    } catch (error) {
      log("Проблема в поиске");
      log(error.toString());
      return [];
    }
  }

  static List<LessonEntity> getLessonsOnDayOfWeek(
          List<LessonEntity> list, int dayOfWeek) =>
      list.where((element) => element.dayOfWeek == dayOfWeek).toList();

  static List sortList(
      {required List<dynamic> listEntity, required List<int> listLikes}) {
    List<dynamic> sortedList = [];
    List<dynamic> likesListEntity = [];
    List<dynamic> noLikesListEntity = [];

    for (int i = 0; i < listEntity.length; i++) {
      int idEntity = getIdFromEntity(listEntity[i]);
      if (listLikes.contains(idEntity)) {
        log("попадаем сюда");
        dynamic item = listEntity[i];
        if (item is GroupEntity) {
          likesListEntity
              .add((listEntity[i] as GroupEntity).copyWith(isLikes: true));
        }
        if (item is LecturerEntity) {
          likesListEntity
              .add((listEntity[i] as LecturerEntity).copyWith(isLikes: true));
        }
        if (item is AuditoriumEntity) {
          likesListEntity
              .add((listEntity[i] as AuditoriumEntity).copyWith(isLikes: true));
        }
      } else {
        noLikesListEntity.add(listEntity[i]);
      }
    }

    sortedList = likesListEntity + noLikesListEntity;

    return sortedList;
  }

  static dynamic getTimetableEntity(int id){
    final searchEntity = locator
        .get<SearchCubit>()
        .state
        .listGroupEntity
        .where((element) => element.groupOid == id)
        .toList()[0];
    return searchEntity;
  }

  static bool rootToTimetable(dynamic userEntity) {
    try { 
      userEntity as UserEntity;
      if (userEntity.idTimetableEntity == null ||
          userEntity.rootInTimetable == false || userEntity.idTimetableEntity ==0) {
        return false;
      } else {
        return true;
      }
    } catch (error) {
      log("Ошибка в методе rootToTimetable в классе Utils");
      log(error.toString());
      return false;
    }
  }

  static int getIdFromEntity(dynamic item) => item is GroupEntity
      ? item.groupOid
      : item is AuditoriumEntity
          ? item.auditoriumOid
          : item is LecturerEntity
              ? item.lecturerOid
              : 0;
}
