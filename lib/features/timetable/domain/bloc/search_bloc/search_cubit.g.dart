// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchState _$$_SearchStateFromJson(Map<String, dynamic> json) =>
    _$_SearchState(
      listGroupEntity: (json['listGroupEntity'] as List<dynamic>)
          .map((e) => GroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      listAuditoriumEntity: (json['listAuditoriumEntity'] as List<dynamic>)
          .map((e) => GroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      listLecturerEntity: (json['listLecturerEntity'] as List<dynamic>)
          .map((e) => GroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchStateToJson(_$_SearchState instance) =>
    <String, dynamic>{
      'listGroupEntity': instance.listGroupEntity,
      'listAuditoriumEntity': instance.listAuditoriumEntity,
      'listLecturerEntity': instance.listLecturerEntity,
    };
