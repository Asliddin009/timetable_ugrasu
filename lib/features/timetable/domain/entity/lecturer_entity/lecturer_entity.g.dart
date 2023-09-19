// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LecturerEntity _$$_LecturerEntityFromJson(Map<String, dynamic> json) =>
    _$_LecturerEntity(
      lecturerOid: json['lecturerOid'] as int,
      fio: json['fio'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_LecturerEntityToJson(_$_LecturerEntity instance) =>
    <String, dynamic>{
      'lecturerOid': instance.lecturerOid,
      'fio': instance.fio,
      'email': instance.email,
    };
