// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      groupEntityl: json['groupEntityl'] == null
          ? null
          : GroupEntity.fromJson(json['groupEntityl'] as Map<String, dynamic>),
      rootInTimetable: json['rootInTimetable'] as bool? ?? true,
      theme: json['theme'] as bool? ?? true,
      isRusLanguage: json['isRusLanguage'] as bool? ?? true,
      listLikes: (json['listLikes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'groupEntityl': instance.groupEntityl,
      'rootInTimetable': instance.rootInTimetable,
      'theme': instance.theme,
      'isRusLanguage': instance.isRusLanguage,
      'listLikes': instance.listLikes,
    };
