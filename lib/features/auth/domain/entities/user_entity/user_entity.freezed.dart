// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  GroupEntity? get groupEntityl =>
      throw _privateConstructorUsedError; //флаг чтобы перебрасывать сразу на экран с расписанием
  bool? get rootInTimetable =>
      throw _privateConstructorUsedError; //флаг для темы
  bool? get theme =>
      throw _privateConstructorUsedError; //флаг для языка(по умолчанию русский)
  bool? get isRusLanguage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get userState => throw _privateConstructorUsedError;
  List<int> get listLikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {GroupEntity? groupEntityl,
      bool? rootInTimetable,
      bool? theme,
      bool? isRusLanguage,
      @JsonKey(ignore: true) AsyncSnapshot<dynamic>? userState,
      List<int> listLikes});

  $GroupEntityCopyWith<$Res>? get groupEntityl;
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupEntityl = freezed,
    Object? rootInTimetable = freezed,
    Object? theme = freezed,
    Object? isRusLanguage = freezed,
    Object? userState = freezed,
    Object? listLikes = null,
  }) {
    return _then(_value.copyWith(
      groupEntityl: freezed == groupEntityl
          ? _value.groupEntityl
          : groupEntityl // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
      rootInTimetable: freezed == rootInTimetable
          ? _value.rootInTimetable
          : rootInTimetable // ignore: cast_nullable_to_non_nullable
              as bool?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRusLanguage: freezed == isRusLanguage
          ? _value.isRusLanguage
          : isRusLanguage // ignore: cast_nullable_to_non_nullable
              as bool?,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      listLikes: null == listLikes
          ? _value.listLikes
          : listLikes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupEntityCopyWith<$Res>? get groupEntityl {
    if (_value.groupEntityl == null) {
      return null;
    }

    return $GroupEntityCopyWith<$Res>(_value.groupEntityl!, (value) {
      return _then(_value.copyWith(groupEntityl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GroupEntity? groupEntityl,
      bool? rootInTimetable,
      bool? theme,
      bool? isRusLanguage,
      @JsonKey(ignore: true) AsyncSnapshot<dynamic>? userState,
      List<int> listLikes});

  @override
  $GroupEntityCopyWith<$Res>? get groupEntityl;
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupEntityl = freezed,
    Object? rootInTimetable = freezed,
    Object? theme = freezed,
    Object? isRusLanguage = freezed,
    Object? userState = freezed,
    Object? listLikes = null,
  }) {
    return _then(_$_UserEntity(
      groupEntityl: freezed == groupEntityl
          ? _value.groupEntityl
          : groupEntityl // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
      rootInTimetable: freezed == rootInTimetable
          ? _value.rootInTimetable
          : rootInTimetable // ignore: cast_nullable_to_non_nullable
              as bool?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRusLanguage: freezed == isRusLanguage
          ? _value.isRusLanguage
          : isRusLanguage // ignore: cast_nullable_to_non_nullable
              as bool?,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      listLikes: null == listLikes
          ? _value._listLikes
          : listLikes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {this.groupEntityl,
      this.rootInTimetable = true,
      this.theme = true,
      this.isRusLanguage = true,
      @JsonKey(ignore: true) this.userState,
      final List<int> listLikes = const []})
      : _listLikes = listLikes;

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  final GroupEntity? groupEntityl;
//флаг чтобы перебрасывать сразу на экран с расписанием
  @override
  @JsonKey()
  final bool? rootInTimetable;
//флаг для темы
  @override
  @JsonKey()
  final bool? theme;
//флаг для языка(по умолчанию русский)
  @override
  @JsonKey()
  final bool? isRusLanguage;
  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? userState;
  final List<int> _listLikes;
  @override
  @JsonKey()
  List<int> get listLikes {
    if (_listLikes is EqualUnmodifiableListView) return _listLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLikes);
  }

  @override
  String toString() {
    return 'UserEntity(groupEntityl: $groupEntityl, rootInTimetable: $rootInTimetable, theme: $theme, isRusLanguage: $isRusLanguage, userState: $userState, listLikes: $listLikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.groupEntityl, groupEntityl) ||
                other.groupEntityl == groupEntityl) &&
            (identical(other.rootInTimetable, rootInTimetable) ||
                other.rootInTimetable == rootInTimetable) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.isRusLanguage, isRusLanguage) ||
                other.isRusLanguage == isRusLanguage) &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            const DeepCollectionEquality()
                .equals(other._listLikes, _listLikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupEntityl,
      rootInTimetable,
      theme,
      isRusLanguage,
      userState,
      const DeepCollectionEquality().hash(_listLikes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {final GroupEntity? groupEntityl,
      final bool? rootInTimetable,
      final bool? theme,
      final bool? isRusLanguage,
      @JsonKey(ignore: true) final AsyncSnapshot<dynamic>? userState,
      final List<int> listLikes}) = _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  GroupEntity? get groupEntityl;
  @override //флаг чтобы перебрасывать сразу на экран с расписанием
  bool? get rootInTimetable;
  @override //флаг для темы
  bool? get theme;
  @override //флаг для языка(по умолчанию русский)
  bool? get isRusLanguage;
  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get userState;
  @override
  List<int> get listLikes;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
