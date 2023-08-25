import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_entity.freezed.dart';
part 'lecturer_entity.g.dart';

@freezed
class LecturerEntity with _$LecturerEntity {
  factory LecturerEntity.fromJson(Map<String, dynamic> json) =>
      _$LecturerEntityFromJson(json);
  const factory LecturerEntity({
    required String name,
    String? fio,
    String? email,
    String? lecturer_rank,
    String? chair,

    required int lecturerOid,
  }) = _LecturerEntity;

}
