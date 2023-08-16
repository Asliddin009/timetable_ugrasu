import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';


part 'setting_state.dart';

part 'setting_cubit.freezed.dart';

part 'setting_cubit.g.dart';

@Singleton()
class SettingCubit extends HydratedCubit<SettingState> {
  SettingCubit() : super(const SettingState(themeMode: ThemeMode.dark));

  @override
  SettingState? fromJson(Map<String, dynamic> json) {
    final state = SettingState.fromJson(json);
    return state;
  }

  @override
  Map<String, dynamic>? toJson(SettingState state) {
    return Map();
  }

  void stateError(Object error, Emitter emitter) {
    emitter(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    addError(error);
  }
}
