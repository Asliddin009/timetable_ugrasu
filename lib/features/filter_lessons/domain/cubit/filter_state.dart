part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    List<LessonsWeekEntity>? lessonsOn10Weeks,
    List<LessonEntity>? fullListLessonsFilter

  })=_FilterState;

  factory FilterState.fromJson(Map<String, dynamic> json) =>
      _$FilterStateFromJson(json);
}
