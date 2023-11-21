// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterState _$$_FilterStateFromJson(Map<String, dynamic> json) =>
    _$_FilterState(
      lessonsWeeks: (json['lessonsWeeks'] as List<dynamic>?)
          ?.map((e) => LessonsWeekEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullListLessonsFilter: (json['fullListLessonsFilter'] as List<dynamic>?)
          ?.map((e) => LessonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      listDisciplineOid: (json['listDisciplineOid'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      subGroup: json['subGroup'] as String?,
    );

Map<String, dynamic> _$$_FilterStateToJson(_$_FilterState instance) =>
    <String, dynamic>{
      'lessonsWeeks': instance.lessonsWeeks,
      'fullListLessonsFilter': instance.fullListLessonsFilter,
      'listDisciplineOid': instance.listDisciplineOid,
      'subGroup': instance.subGroup,
    };
