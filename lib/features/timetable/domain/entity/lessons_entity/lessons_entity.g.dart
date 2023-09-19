// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lessons_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonsWeekEntity _$$_LessonsWeekEntityFromJson(Map<String, dynamic> json) =>
    _$_LessonsWeekEntity(
      todate: DateTime.parse(json['todate'] as String),
      fromdate: DateTime.parse(json['fromdate'] as String),
      list: (json['list'] as List<dynamic>)
          .map((e) => LessonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LessonsWeekEntityToJson(
        _$_LessonsWeekEntity instance) =>
    <String, dynamic>{
      'todate': instance.todate.toIso8601String(),
      'fromdate': instance.fromdate.toIso8601String(),
      'list': instance.list,
    };

_$_LessonEntity _$$_LessonEntityFromJson(Map<String, dynamic> json) =>
    _$_LessonEntity(
      auditorium: json['auditorium'] as String,
      beginLesson: json['beginLesson'] as String,
      building: json['building'] as String,
      date: json['date'] as String,
      dayOfWeek: json['dayOfWeek'] as int,
      dayOfWeekString: json['dayOfWeekString'] as String,
      discipline: json['discipline'] as String,
      endLesson: json['endLesson'] as String,
      group: json['group'] as String?,
      lecturer: json['lecturer'] as String,
      lecturerEmail: json['lecturerEmail'] as String?,
      kindOfWork: json['kindOfWork'] as String,
      lecturer_rank: json['lecturer_rank'] as String?,
      lecturer_title: json['lecturer_title'] as String?,
      isFilter: json['isFilter'] as bool?,
    );

Map<String, dynamic> _$$_LessonEntityToJson(_$_LessonEntity instance) =>
    <String, dynamic>{
      'auditorium': instance.auditorium,
      'beginLesson': instance.beginLesson,
      'building': instance.building,
      'date': instance.date,
      'dayOfWeek': instance.dayOfWeek,
      'dayOfWeekString': instance.dayOfWeekString,
      'discipline': instance.discipline,
      'endLesson': instance.endLesson,
      'group': instance.group,
      'lecturer': instance.lecturer,
      'lecturerEmail': instance.lecturerEmail,
      'kindOfWork': instance.kindOfWork,
      'lecturer_rank': instance.lecturer_rank,
      'lecturer_title': instance.lecturer_title,
      'isFilter': instance.isFilter,
    };
