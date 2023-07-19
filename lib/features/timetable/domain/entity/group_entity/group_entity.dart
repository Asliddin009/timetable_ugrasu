import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';
part 'group_entity.g.dart';

@freezed
class GroupEntity with _$GroupEntity {
  factory GroupEntity.fromJson(Map<String, dynamic> json) =>
      _$GroupEntityFromJson(json);
  const factory GroupEntity({
    required String name,
    String? speciality,
    required int groupOid,
  }) = _GroupEntity;

}
