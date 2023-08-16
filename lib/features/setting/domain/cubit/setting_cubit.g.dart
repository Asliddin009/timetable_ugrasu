// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingState _$$_SettingStateFromJson(Map<String, dynamic> json) =>
    _$_SettingState(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$_SettingStateToJson(_$_SettingState instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
