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
      lecturer_rank: json['lecturer_rank'] as String?,
      chair: json['chair'] as String?,
      shortFIO: json['shortFIO'] as String?,
      isLikes: json['isLikes'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LecturerEntityToJson(_$_LecturerEntity instance) =>
    <String, dynamic>{
      'lecturerOid': instance.lecturerOid,
      'fio': instance.fio,
      'email': instance.email,
      'lecturer_rank': instance.lecturer_rank,
      'chair': instance.chair,
      'shortFIO': instance.shortFIO,
      'isLikes': instance.isLikes,
    };
