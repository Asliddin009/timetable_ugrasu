// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lessons_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonsWeekEntity _$LessonsWeekEntityFromJson(Map<String, dynamic> json) {
  return _LessonsWeekEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonsWeekEntity {
  String? get todate => throw _privateConstructorUsedError;
  String? get fromdate => throw _privateConstructorUsedError;
  List<LessonEntity> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonsWeekEntityCopyWith<LessonsWeekEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsWeekEntityCopyWith<$Res> {
  factory $LessonsWeekEntityCopyWith(
          LessonsWeekEntity value, $Res Function(LessonsWeekEntity) then) =
      _$LessonsWeekEntityCopyWithImpl<$Res, LessonsWeekEntity>;
  @useResult
  $Res call({String? todate, String? fromdate, List<LessonEntity> list});
}

/// @nodoc
class _$LessonsWeekEntityCopyWithImpl<$Res, $Val extends LessonsWeekEntity>
    implements $LessonsWeekEntityCopyWith<$Res> {
  _$LessonsWeekEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todate = freezed,
    Object? fromdate = freezed,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      todate: freezed == todate
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromdate: freezed == fromdate
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as String?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonsWeekEntityCopyWith<$Res>
    implements $LessonsWeekEntityCopyWith<$Res> {
  factory _$$_LessonsWeekEntityCopyWith(_$_LessonsWeekEntity value,
          $Res Function(_$_LessonsWeekEntity) then) =
      __$$_LessonsWeekEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? todate, String? fromdate, List<LessonEntity> list});
}

/// @nodoc
class __$$_LessonsWeekEntityCopyWithImpl<$Res>
    extends _$LessonsWeekEntityCopyWithImpl<$Res, _$_LessonsWeekEntity>
    implements _$$_LessonsWeekEntityCopyWith<$Res> {
  __$$_LessonsWeekEntityCopyWithImpl(
      _$_LessonsWeekEntity _value, $Res Function(_$_LessonsWeekEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todate = freezed,
    Object? fromdate = freezed,
    Object? list = null,
  }) {
    return _then(_$_LessonsWeekEntity(
      todate: freezed == todate
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromdate: freezed == fromdate
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as String?,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonsWeekEntity implements _LessonsWeekEntity {
  const _$_LessonsWeekEntity(
      {this.todate, this.fromdate, required final List<LessonEntity> list})
      : _list = list;

  factory _$_LessonsWeekEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LessonsWeekEntityFromJson(json);

  @override
  final String? todate;
  @override
  final String? fromdate;
  final List<LessonEntity> _list;
  @override
  List<LessonEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'LessonsWeekEntity(todate: $todate, fromdate: $fromdate, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonsWeekEntity &&
            (identical(other.todate, todate) || other.todate == todate) &&
            (identical(other.fromdate, fromdate) ||
                other.fromdate == fromdate) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todate, fromdate,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonsWeekEntityCopyWith<_$_LessonsWeekEntity> get copyWith =>
      __$$_LessonsWeekEntityCopyWithImpl<_$_LessonsWeekEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonsWeekEntityToJson(
      this,
    );
  }
}

abstract class _LessonsWeekEntity implements LessonsWeekEntity {
  const factory _LessonsWeekEntity(
      {final String? todate,
      final String? fromdate,
      required final List<LessonEntity> list}) = _$_LessonsWeekEntity;

  factory _LessonsWeekEntity.fromJson(Map<String, dynamic> json) =
      _$_LessonsWeekEntity.fromJson;

  @override
  String? get todate;
  @override
  String? get fromdate;
  @override
  List<LessonEntity> get list;
  @override
  @JsonKey(ignore: true)
  _$$_LessonsWeekEntityCopyWith<_$_LessonsWeekEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonEntity _$LessonEntityFromJson(Map<String, dynamic> json) {
  return _LessonEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonEntity {
  String get auditorium => throw _privateConstructorUsedError;
  String get beginLesson => throw _privateConstructorUsedError;
  String get building => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get dayOfWeekString => throw _privateConstructorUsedError;
  String get discipline => throw _privateConstructorUsedError;
  String get endLesson => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String get lecturer => throw _privateConstructorUsedError;
  String? get lecturerEmail => throw _privateConstructorUsedError;
  String get kindOfWork => throw _privateConstructorUsedError;
  String? get lecturer_rank => throw _privateConstructorUsedError;
  String? get lecturer_title => throw _privateConstructorUsedError; //Фильтр
  bool? get isFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonEntityCopyWith<LessonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonEntityCopyWith<$Res> {
  factory $LessonEntityCopyWith(
          LessonEntity value, $Res Function(LessonEntity) then) =
      _$LessonEntityCopyWithImpl<$Res, LessonEntity>;
  @useResult
  $Res call(
      {String auditorium,
      String beginLesson,
      String building,
      String date,
      int dayOfWeek,
      String dayOfWeekString,
      String discipline,
      String endLesson,
      String? group,
      String lecturer,
      String? lecturerEmail,
      String kindOfWork,
      String? lecturer_rank,
      String? lecturer_title,
      bool? isFilter});
}

/// @nodoc
class _$LessonEntityCopyWithImpl<$Res, $Val extends LessonEntity>
    implements $LessonEntityCopyWith<$Res> {
  _$LessonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditorium = null,
    Object? beginLesson = null,
    Object? building = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? dayOfWeekString = null,
    Object? discipline = null,
    Object? endLesson = null,
    Object? group = freezed,
    Object? lecturer = null,
    Object? lecturerEmail = freezed,
    Object? kindOfWork = null,
    Object? lecturer_rank = freezed,
    Object? lecturer_title = freezed,
    Object? isFilter = freezed,
  }) {
    return _then(_value.copyWith(
      auditorium: null == auditorium
          ? _value.auditorium
          : auditorium // ignore: cast_nullable_to_non_nullable
              as String,
      beginLesson: null == beginLesson
          ? _value.beginLesson
          : beginLesson // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeekString: null == dayOfWeekString
          ? _value.dayOfWeekString
          : dayOfWeekString // ignore: cast_nullable_to_non_nullable
              as String,
      discipline: null == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String,
      endLesson: null == endLesson
          ? _value.endLesson
          : endLesson // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
      lecturerEmail: freezed == lecturerEmail
          ? _value.lecturerEmail
          : lecturerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      kindOfWork: null == kindOfWork
          ? _value.kindOfWork
          : kindOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      lecturer_rank: freezed == lecturer_rank
          ? _value.lecturer_rank
          : lecturer_rank // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer_title: freezed == lecturer_title
          ? _value.lecturer_title
          : lecturer_title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFilter: freezed == isFilter
          ? _value.isFilter
          : isFilter // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonEntityCopyWith<$Res>
    implements $LessonEntityCopyWith<$Res> {
  factory _$$_LessonEntityCopyWith(
          _$_LessonEntity value, $Res Function(_$_LessonEntity) then) =
      __$$_LessonEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String auditorium,
      String beginLesson,
      String building,
      String date,
      int dayOfWeek,
      String dayOfWeekString,
      String discipline,
      String endLesson,
      String? group,
      String lecturer,
      String? lecturerEmail,
      String kindOfWork,
      String? lecturer_rank,
      String? lecturer_title,
      bool? isFilter});
}

/// @nodoc
class __$$_LessonEntityCopyWithImpl<$Res>
    extends _$LessonEntityCopyWithImpl<$Res, _$_LessonEntity>
    implements _$$_LessonEntityCopyWith<$Res> {
  __$$_LessonEntityCopyWithImpl(
      _$_LessonEntity _value, $Res Function(_$_LessonEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditorium = null,
    Object? beginLesson = null,
    Object? building = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? dayOfWeekString = null,
    Object? discipline = null,
    Object? endLesson = null,
    Object? group = freezed,
    Object? lecturer = null,
    Object? lecturerEmail = freezed,
    Object? kindOfWork = null,
    Object? lecturer_rank = freezed,
    Object? lecturer_title = freezed,
    Object? isFilter = freezed,
  }) {
    return _then(_$_LessonEntity(
      auditorium: null == auditorium
          ? _value.auditorium
          : auditorium // ignore: cast_nullable_to_non_nullable
              as String,
      beginLesson: null == beginLesson
          ? _value.beginLesson
          : beginLesson // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeekString: null == dayOfWeekString
          ? _value.dayOfWeekString
          : dayOfWeekString // ignore: cast_nullable_to_non_nullable
              as String,
      discipline: null == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String,
      endLesson: null == endLesson
          ? _value.endLesson
          : endLesson // ignore: cast_nullable_to_non_nullable
              as String,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
      lecturerEmail: freezed == lecturerEmail
          ? _value.lecturerEmail
          : lecturerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      kindOfWork: null == kindOfWork
          ? _value.kindOfWork
          : kindOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      lecturer_rank: freezed == lecturer_rank
          ? _value.lecturer_rank
          : lecturer_rank // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer_title: freezed == lecturer_title
          ? _value.lecturer_title
          : lecturer_title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFilter: freezed == isFilter
          ? _value.isFilter
          : isFilter // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonEntity implements _LessonEntity {
  const _$_LessonEntity(
      {required this.auditorium,
      required this.beginLesson,
      required this.building,
      required this.date,
      required this.dayOfWeek,
      required this.dayOfWeekString,
      required this.discipline,
      required this.endLesson,
      this.group,
      required this.lecturer,
      this.lecturerEmail,
      required this.kindOfWork,
      this.lecturer_rank,
      this.lecturer_title,
      this.isFilter});

  factory _$_LessonEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LessonEntityFromJson(json);

  @override
  final String auditorium;
  @override
  final String beginLesson;
  @override
  final String building;
  @override
  final String date;
  @override
  final int dayOfWeek;
  @override
  final String dayOfWeekString;
  @override
  final String discipline;
  @override
  final String endLesson;
  @override
  final String? group;
  @override
  final String lecturer;
  @override
  final String? lecturerEmail;
  @override
  final String kindOfWork;
  @override
  final String? lecturer_rank;
  @override
  final String? lecturer_title;
//Фильтр
  @override
  final bool? isFilter;

  @override
  String toString() {
    return 'LessonEntity(auditorium: $auditorium, beginLesson: $beginLesson, building: $building, date: $date, dayOfWeek: $dayOfWeek, dayOfWeekString: $dayOfWeekString, discipline: $discipline, endLesson: $endLesson, group: $group, lecturer: $lecturer, lecturerEmail: $lecturerEmail, kindOfWork: $kindOfWork, lecturer_rank: $lecturer_rank, lecturer_title: $lecturer_title, isFilter: $isFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonEntity &&
            (identical(other.auditorium, auditorium) ||
                other.auditorium == auditorium) &&
            (identical(other.beginLesson, beginLesson) ||
                other.beginLesson == beginLesson) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.dayOfWeekString, dayOfWeekString) ||
                other.dayOfWeekString == dayOfWeekString) &&
            (identical(other.discipline, discipline) ||
                other.discipline == discipline) &&
            (identical(other.endLesson, endLesson) ||
                other.endLesson == endLesson) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            (identical(other.lecturerEmail, lecturerEmail) ||
                other.lecturerEmail == lecturerEmail) &&
            (identical(other.kindOfWork, kindOfWork) ||
                other.kindOfWork == kindOfWork) &&
            (identical(other.lecturer_rank, lecturer_rank) ||
                other.lecturer_rank == lecturer_rank) &&
            (identical(other.lecturer_title, lecturer_title) ||
                other.lecturer_title == lecturer_title) &&
            (identical(other.isFilter, isFilter) ||
                other.isFilter == isFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      auditorium,
      beginLesson,
      building,
      date,
      dayOfWeek,
      dayOfWeekString,
      discipline,
      endLesson,
      group,
      lecturer,
      lecturerEmail,
      kindOfWork,
      lecturer_rank,
      lecturer_title,
      isFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonEntityCopyWith<_$_LessonEntity> get copyWith =>
      __$$_LessonEntityCopyWithImpl<_$_LessonEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonEntityToJson(
      this,
    );
  }
}

abstract class _LessonEntity implements LessonEntity {
  const factory _LessonEntity(
      {required final String auditorium,
      required final String beginLesson,
      required final String building,
      required final String date,
      required final int dayOfWeek,
      required final String dayOfWeekString,
      required final String discipline,
      required final String endLesson,
      final String? group,
      required final String lecturer,
      final String? lecturerEmail,
      required final String kindOfWork,
      final String? lecturer_rank,
      final String? lecturer_title,
      final bool? isFilter}) = _$_LessonEntity;

  factory _LessonEntity.fromJson(Map<String, dynamic> json) =
      _$_LessonEntity.fromJson;

  @override
  String get auditorium;
  @override
  String get beginLesson;
  @override
  String get building;
  @override
  String get date;
  @override
  int get dayOfWeek;
  @override
  String get dayOfWeekString;
  @override
  String get discipline;
  @override
  String get endLesson;
  @override
  String? get group;
  @override
  String get lecturer;
  @override
  String? get lecturerEmail;
  @override
  String get kindOfWork;
  @override
  String? get lecturer_rank;
  @override
  String? get lecturer_title;
  @override //Фильтр
  bool? get isFilter;
  @override
  @JsonKey(ignore: true)
  _$$_LessonEntityCopyWith<_$_LessonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
