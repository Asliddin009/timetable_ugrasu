part of 'timetable_cubit.dart';

@freezed
class TimetableState with _$TimetableState {
  const factory TimetableState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    required LessonsWeekEntity lessonsWeek,
    @Default([])List<LessonEntity> listDifferencesLesson,
    String? errorText
  })=_TimetableState;
}
