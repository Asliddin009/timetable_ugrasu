// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auditorium_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuditoriumEntity _$$_AuditoriumEntityFromJson(Map<String, dynamic> json) =>
    _$_AuditoriumEntity(
      building: json['building'] as String?,
      typeOfAuditorium: json['typeOfAuditorium'] as String?,
      name: json['name'] as String,
      number: json['number'] as String?,
      auditoriumOid: json['auditoriumOid'] as int,
      isLikes: json['isLikes'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AuditoriumEntityToJson(_$_AuditoriumEntity instance) =>
    <String, dynamic>{
      'building': instance.building,
      'typeOfAuditorium': instance.typeOfAuditorium,
      'name': instance.name,
      'number': instance.number,
      'auditoriumOid': instance.auditoriumOid,
      'isLikes': instance.isLikes,
    };
