// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterState _$FilterStateFromJson(Map<String, dynamic> json) {
  return _FilterState.fromJson(json);
}

/// @nodoc
mixin _$FilterState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<LessonsWeekEntity>? get lessonsWeeks =>
      throw _privateConstructorUsedError;
  List<LessonEntity>? get fullListLessonsFilter =>
      throw _privateConstructorUsedError;
  List<int> get listDisciplineOid => throw _privateConstructorUsedError;
  String? get subGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<LessonsWeekEntity>? lessonsWeeks,
      List<LessonEntity>? fullListLessonsFilter,
      List<int> listDisciplineOid,
      String? subGroup});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? lessonsWeeks = freezed,
    Object? fullListLessonsFilter = freezed,
    Object? listDisciplineOid = null,
    Object? subGroup = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      lessonsWeeks: freezed == lessonsWeeks
          ? _value.lessonsWeeks
          : lessonsWeeks // ignore: cast_nullable_to_non_nullable
              as List<LessonsWeekEntity>?,
      fullListLessonsFilter: freezed == fullListLessonsFilter
          ? _value.fullListLessonsFilter
          : fullListLessonsFilter // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>?,
      listDisciplineOid: null == listDisciplineOid
          ? _value.listDisciplineOid
          : listDisciplineOid // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subGroup: freezed == subGroup
          ? _value.subGroup
          : subGroup // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateCopyWith(
          _$_FilterState value, $Res Function(_$_FilterState) then) =
      __$$_FilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<LessonsWeekEntity>? lessonsWeeks,
      List<LessonEntity>? fullListLessonsFilter,
      List<int> listDisciplineOid,
      String? subGroup});
}

/// @nodoc
class __$$_FilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$_FilterState>
    implements _$$_FilterStateCopyWith<$Res> {
  __$$_FilterStateCopyWithImpl(
      _$_FilterState _value, $Res Function(_$_FilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? lessonsWeeks = freezed,
    Object? fullListLessonsFilter = freezed,
    Object? listDisciplineOid = null,
    Object? subGroup = freezed,
  }) {
    return _then(_$_FilterState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      lessonsWeeks: freezed == lessonsWeeks
          ? _value._lessonsWeeks
          : lessonsWeeks // ignore: cast_nullable_to_non_nullable
              as List<LessonsWeekEntity>?,
      fullListLessonsFilter: freezed == fullListLessonsFilter
          ? _value._fullListLessonsFilter
          : fullListLessonsFilter // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>?,
      listDisciplineOid: null == listDisciplineOid
          ? _value._listDisciplineOid
          : listDisciplineOid // ignore: cast_nullable_to_non_nullable
              as List<int>,
      subGroup: freezed == subGroup
          ? _value.subGroup
          : subGroup // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterState implements _FilterState {
  const _$_FilterState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<LessonsWeekEntity>? lessonsWeeks,
      final List<LessonEntity>? fullListLessonsFilter,
      final List<int> listDisciplineOid = const [],
      this.subGroup})
      : _lessonsWeeks = lessonsWeeks,
        _fullListLessonsFilter = fullListLessonsFilter,
        _listDisciplineOid = listDisciplineOid;

  factory _$_FilterState.fromJson(Map<String, dynamic> json) =>
      _$$_FilterStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<LessonsWeekEntity>? _lessonsWeeks;
  @override
  List<LessonsWeekEntity>? get lessonsWeeks {
    final value = _lessonsWeeks;
    if (value == null) return null;
    if (_lessonsWeeks is EqualUnmodifiableListView) return _lessonsWeeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LessonEntity>? _fullListLessonsFilter;
  @override
  List<LessonEntity>? get fullListLessonsFilter {
    final value = _fullListLessonsFilter;
    if (value == null) return null;
    if (_fullListLessonsFilter is EqualUnmodifiableListView)
      return _fullListLessonsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int> _listDisciplineOid;
  @override
  @JsonKey()
  List<int> get listDisciplineOid {
    if (_listDisciplineOid is EqualUnmodifiableListView)
      return _listDisciplineOid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDisciplineOid);
  }

  @override
  final String? subGroup;

  @override
  String toString() {
    return 'FilterState(asyncSnapshot: $asyncSnapshot, lessonsWeeks: $lessonsWeeks, fullListLessonsFilter: $fullListLessonsFilter, listDisciplineOid: $listDisciplineOid, subGroup: $subGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._lessonsWeeks, _lessonsWeeks) &&
            const DeepCollectionEquality()
                .equals(other._fullListLessonsFilter, _fullListLessonsFilter) &&
            const DeepCollectionEquality()
                .equals(other._listDisciplineOid, _listDisciplineOid) &&
            (identical(other.subGroup, subGroup) ||
                other.subGroup == subGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_lessonsWeeks),
      const DeepCollectionEquality().hash(_fullListLessonsFilter),
      const DeepCollectionEquality().hash(_listDisciplineOid),
      subGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      __$$_FilterStateCopyWithImpl<_$_FilterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterStateToJson(
      this,
    );
  }
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<LessonsWeekEntity>? lessonsWeeks,
      final List<LessonEntity>? fullListLessonsFilter,
      final List<int> listDisciplineOid,
      final String? subGroup}) = _$_FilterState;

  factory _FilterState.fromJson(Map<String, dynamic> json) =
      _$_FilterState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<LessonsWeekEntity>? get lessonsWeeks;
  @override
  List<LessonEntity>? get fullListLessonsFilter;
  @override
  List<int> get listDisciplineOid;
  @override
  String? get subGroup;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
