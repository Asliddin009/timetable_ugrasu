
import 'package:timetable_ugrasu/features/timetable/domain/entity/auditorium_entity/auditorium_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/lessons_entity/lessons_entity.dart';

import '../../../features/timetable/domain/entity/lecturer_entity/lecturer_entity.dart';

abstract class Utils {
  static (int,String) getIdAndTitleFromSearchEntity(dynamic searchEntity) {
    if (searchEntity is GroupEntity) {
      return (searchEntity.groupOid,"Расписание группы ${searchEntity.name}");
    }
    if (searchEntity is LecturerEntity) {
      return (searchEntity.lecturerOid ,"Расписание преподавателя ${searchEntity.fio}");
    }
    if (searchEntity is AuditoriumEntity) {
      return (searchEntity.auditoriumOid,"Расписание аудитории №${searchEntity.number}");
    }
    return (0,"Группа не найдена");
  }

  static List<LessonEntity> getLessonsOnDayOfWeek(List<LessonEntity> list, int dayOfWeek)=>
    list.where((element) => element.dayOfWeek==dayOfWeek).toList();
}
