import 'package:freezed_annotation/freezed_annotation.dart';

part 'auditorium_entity.freezed.dart';
part 'auditorium_entity.g.dart';

@freezed
class AuditoriumEntity with _$AuditoriumEntity {
  factory AuditoriumEntity.fromJson(Map<String, dynamic> json)=>
      _$AuditoriumEntityFromJson(json);

  const factory AuditoriumEntity({
    String? building,
    String? typeOfAuditorium,
    required String name,
    String? number,
    required int auditoriumOid
}
      ) = _AuditoriumEntity;

}

