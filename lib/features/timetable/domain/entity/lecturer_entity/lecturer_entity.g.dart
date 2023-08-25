// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LecturerEntity _$$_LecturerEntityFromJson(Map<String, dynamic> json) =>
    _$_LecturerEntity(
      name: json['name'] as String,
      fio: json['fio'] as String?,
      email: json['email'] as String?,
      lecturer_rank: json['lecturer_rank'] as String?,
      chair: json['chair'] as String?,
      lecturerOid: json['lecturerOid'] as int,
    );

Map<String, dynamic> _$$_LecturerEntityToJson(_$_LecturerEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fio': instance.fio,
      'email': instance.email,
      'lecturer_rank': instance.lecturer_rank,
      'chair': instance.chair,
      'lecturerOid': instance.lecturerOid,
    };
