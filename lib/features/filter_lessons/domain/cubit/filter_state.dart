part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    List<LessonsWeekEntity>? lessonsWeeks,
    List<LessonEntity>? fullListLessonsFilter,
    @Default([]) List<int> listDisciplineOid,
    String? subGroup,

  })=_FilterState;

  factory FilterState.fromJson(Map<String, dynamic> json) =>
      _$FilterStateFromJson(json);

}
