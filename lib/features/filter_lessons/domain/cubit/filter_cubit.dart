import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../timetable/domain/entity/lessons_entity/lessons_entity.dart';

part 'filter_state.dart';

part 'filter_cubit.freezed.dart';

part 'filter_cubit.g.dart';

@Singleton()
class FilterCubit extends HydratedCubit<FilterState> {
  FilterCubit() : super(const FilterState());

  @override
  FilterState? fromJson(Map<String, dynamic> json) {
    final state = FilterState.fromJson(json);
    return state;
  }

  @override
  Map<String, dynamic>? toJson(FilterState state) {
    return Map();
  }

  void stateError(Object error, Emitter emitter) {
    emitter(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    addError(error);
  }
}
