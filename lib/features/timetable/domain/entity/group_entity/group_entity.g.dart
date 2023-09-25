// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupEntity _$$_GroupEntityFromJson(Map<String, dynamic> json) =>
    _$_GroupEntity(
      name: json['name'] as String,
      speciality: json['speciality'] as String?,
      groupOid: json['groupOid'] as int,
      isLikes: json['isLikes'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GroupEntityToJson(_$_GroupEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'speciality': instance.speciality,
      'groupOid': instance.groupOid,
      'isLikes': instance.isLikes,
    };
