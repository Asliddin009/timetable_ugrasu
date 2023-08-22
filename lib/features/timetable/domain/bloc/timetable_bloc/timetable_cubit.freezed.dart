// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  LessonsWeekEntity get lessonsWeek => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableStateCopyWith<TimetableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableStateCopyWith<$Res> {
  factory $TimetableStateCopyWith(
          TimetableState value, $Res Function(TimetableState) then) =
      _$TimetableStateCopyWithImpl<$Res, TimetableState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      LessonsWeekEntity lessonsWeek});

  $LessonsWeekEntityCopyWith<$Res> get lessonsWeek;
}

/// @nodoc
class _$TimetableStateCopyWithImpl<$Res, $Val extends TimetableState>
    implements $TimetableStateCopyWith<$Res> {
  _$TimetableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? lessonsWeek = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      lessonsWeek: null == lessonsWeek
          ? _value.lessonsWeek
          : lessonsWeek // ignore: cast_nullable_to_non_nullable
              as LessonsWeekEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonsWeekEntityCopyWith<$Res> get lessonsWeek {
    return $LessonsWeekEntityCopyWith<$Res>(_value.lessonsWeek, (value) {
      return _then(_value.copyWith(lessonsWeek: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimetableStateCopyWith<$Res>
    implements $TimetableStateCopyWith<$Res> {
  factory _$$_TimetableStateCopyWith(
          _$_TimetableState value, $Res Function(_$_TimetableState) then) =
      __$$_TimetableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      LessonsWeekEntity lessonsWeek});

  @override
  $LessonsWeekEntityCopyWith<$Res> get lessonsWeek;
}

/// @nodoc
class __$$_TimetableStateCopyWithImpl<$Res>
    extends _$TimetableStateCopyWithImpl<$Res, _$_TimetableState>
    implements _$$_TimetableStateCopyWith<$Res> {
  __$$_TimetableStateCopyWithImpl(
      _$_TimetableState _value, $Res Function(_$_TimetableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? lessonsWeek = null,
  }) {
    return _then(_$_TimetableState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      lessonsWeek: null == lessonsWeek
          ? _value.lessonsWeek
          : lessonsWeek // ignore: cast_nullable_to_non_nullable
              as LessonsWeekEntity,
    ));
  }
}

/// @nodoc

class _$_TimetableState implements _TimetableState {
  const _$_TimetableState(
      {@JsonKey(ignore: true) this.asyncSnapshot, required this.lessonsWeek});

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  @override
  final LessonsWeekEntity lessonsWeek;

  @override
  String toString() {
    return 'TimetableState(asyncSnapshot: $asyncSnapshot, lessonsWeek: $lessonsWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimetableState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.lessonsWeek, lessonsWeek) ||
                other.lessonsWeek == lessonsWeek));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, lessonsWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimetableStateCopyWith<_$_TimetableState> get copyWith =>
      __$$_TimetableStateCopyWithImpl<_$_TimetableState>(this, _$identity);
}

abstract class _TimetableState implements TimetableState {
  const factory _TimetableState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      required final LessonsWeekEntity lessonsWeek}) = _$_TimetableState;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  LessonsWeekEntity get lessonsWeek;
  @override
  @JsonKey(ignore: true)
  _$$_TimetableStateCopyWith<_$_TimetableState> get copyWith =>
      throw _privateConstructorUsedError;
}
