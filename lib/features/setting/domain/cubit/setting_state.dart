part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    required ThemeMode themeMode,

  })=_SettingState;

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
}
