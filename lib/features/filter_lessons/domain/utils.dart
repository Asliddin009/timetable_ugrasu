import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

abstract class UtilsFilter {
  static bool checkLesson(
      LessonsWeekEntity lesson, List<LessonsWeekEntity> sortList) {
    for (var element in sortList) {
      if (element.fromdate == lesson.fromdate &&
          element.todate == lesson.todate) {
        return false;
      }
    }
    if (lesson.todate.day > DateTime.now().day ||
        lesson.todate.month >= DateTime.now().month) {
      return true;
    }
    return false;
  }
}
