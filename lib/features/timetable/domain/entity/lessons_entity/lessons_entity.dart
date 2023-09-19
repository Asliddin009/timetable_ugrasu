import 'package:freezed_annotation/freezed_annotation.dart';

part 'lessons_entity.freezed.dart';

part 'lessons_entity.g.dart';


@freezed
class LessonsWeekEntity with _$LessonsWeekEntity {

      const factory LessonsWeekEntity({
            required DateTime todate,
            required DateTime fromdate,
            required List<LessonEntity> list,
}) = _LessonsWeekEntity;

      factory LessonsWeekEntity.fromJson(Map<String, dynamic> json) =>
          _$LessonsWeekEntityFromJson(json);
}

@freezed
class LessonEntity with _$LessonEntity {
  factory LessonEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonEntityFromJson(json);

  const factory LessonEntity(
      {
        required String auditorium,
        required String beginLesson,
        required String building,
        required String date,
        required int dayOfWeek,
        required String dayOfWeekString,
        required String discipline,
        required String endLesson,
        String? group,
        required String lecturer,
        String? lecturerEmail,
        required String kindOfWork,
        String? lecturer_rank,
        String? lecturer_title,
            //Фильтр
            bool? isFilter
      }) = _LessonEntity;

}
