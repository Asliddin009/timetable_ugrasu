part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,

    required List<GroupEntity> listGroupEntity,
    required List<AuditoriumEntity> listAuditoriumEntity,
    required List<LecturerEntity> listLecturerEntity,


  })=_SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}
