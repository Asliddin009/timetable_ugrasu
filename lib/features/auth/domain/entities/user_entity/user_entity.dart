import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/group_entity.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    GroupEntity? groupEntityl,
    //флаг чтобы перебрасывать сразу на экран с расписанием
    @Default( true)bool? rootInTimetable,
    //флаг для темы
    @Default( true)bool? theme,
    //флаг для языка(по умолчанию русский)
    @Default(true)bool? isRusLanguage,
    @JsonKey(ignore: true) AsyncSnapshot? userState,
    @Default([]) List<int> listLikes
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
