// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterState _$$_FilterStateFromJson(Map<String, dynamic> json) =>
    _$_FilterState(
      lessonsOn10Weeks: (json['lessonsOn10Weeks'] as List<dynamic>?)
          ?.map((e) => LessonsWeekEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullListLessonsFilter: (json['fullListLessonsFilter'] as List<dynamic>?)
          ?.map((e) => LessonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilterStateToJson(_$_FilterState instance) =>
    <String, dynamic>{
      'lessonsOn10Weeks': instance.lessonsOn10Weeks,
      'fullListLessonsFilter': instance.fullListLessonsFilter,
    };
