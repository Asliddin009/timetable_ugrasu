import 'dart:developer';

import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

import '../../../features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';

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

  static int getIdFromEntity(dynamic item) => item is GroupEntity
      ? item.groupOid
      : item is AuditoriumEntity
          ? item.auditoriumOid
          : item is LecturerEntity
              ? item.lecturerOid
              : 0;
}
