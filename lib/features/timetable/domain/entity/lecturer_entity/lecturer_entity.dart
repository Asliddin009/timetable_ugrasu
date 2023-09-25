import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_entity.freezed.dart';
part 'lecturer_entity.g.dart';

@freezed
class LecturerEntity with _$LecturerEntity {
  factory LecturerEntity.fromJson(Map<String, dynamic> json) =>
      _$LecturerEntityFromJson(json);
  const factory LecturerEntity({
    required int lecturerOid,
    required String fio,
    String? email,
    String? lecturer_rank,
    String? chair,
    String? shortFIO,
    @Default(false) bool isLikes,
  }) = _LecturerEntity;

}
