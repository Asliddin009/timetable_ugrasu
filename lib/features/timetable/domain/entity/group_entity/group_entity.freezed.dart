// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupEntity _$GroupEntityFromJson(Map<String, dynamic> json) {
  return _GroupEntity.fromJson(json);
}

/// @nodoc
mixin _$GroupEntity {
  String get name => throw _privateConstructorUsedError;
  String? get speciality => throw _privateConstructorUsedError;
  int get groupOid => throw _privateConstructorUsedError;
  bool get isLikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupEntityCopyWith<GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEntityCopyWith<$Res> {
  factory $GroupEntityCopyWith(
          GroupEntity value, $Res Function(GroupEntity) then) =
      _$GroupEntityCopyWithImpl<$Res, GroupEntity>;
  @useResult
  $Res call({String name, String? speciality, int groupOid, bool isLikes});
}

/// @nodoc
class _$GroupEntityCopyWithImpl<$Res, $Val extends GroupEntity>
    implements $GroupEntityCopyWith<$Res> {
  _$GroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? speciality = freezed,
    Object? groupOid = null,
    Object? isLikes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: freezed == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      groupOid: null == groupOid
          ? _value.groupOid
          : groupOid // ignore: cast_nullable_to_non_nullable
              as int,
      isLikes: null == isLikes
          ? _value.isLikes
          : isLikes // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupEntityCopyWith<$Res>
    implements $GroupEntityCopyWith<$Res> {
  factory _$$_GroupEntityCopyWith(
          _$_GroupEntity value, $Res Function(_$_GroupEntity) then) =
      __$$_GroupEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? speciality, int groupOid, bool isLikes});
}

/// @nodoc
class __$$_GroupEntityCopyWithImpl<$Res>
    extends _$GroupEntityCopyWithImpl<$Res, _$_GroupEntity>
    implements _$$_GroupEntityCopyWith<$Res> {
  __$$_GroupEntityCopyWithImpl(
      _$_GroupEntity _value, $Res Function(_$_GroupEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? speciality = freezed,
    Object? groupOid = null,
    Object? isLikes = null,
  }) {
    return _then(_$_GroupEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: freezed == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as String?,
      groupOid: null == groupOid
          ? _value.groupOid
          : groupOid // ignore: cast_nullable_to_non_nullable
              as int,
      isLikes: null == isLikes
          ? _value.isLikes
          : isLikes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupEntity implements _GroupEntity {
  const _$_GroupEntity(
      {required this.name,
      this.speciality,
      required this.groupOid,
      this.isLikes = false});

  factory _$_GroupEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GroupEntityFromJson(json);

  @override
  final String name;
  @override
  final String? speciality;
  @override
  final int groupOid;
  @override
  @JsonKey()
  final bool isLikes;

  @override
  String toString() {
    return 'GroupEntity(name: $name, speciality: $speciality, groupOid: $groupOid, isLikes: $isLikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.speciality, speciality) ||
                other.speciality == speciality) &&
            (identical(other.groupOid, groupOid) ||
                other.groupOid == groupOid) &&
            (identical(other.isLikes, isLikes) || other.isLikes == isLikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, speciality, groupOid, isLikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupEntityCopyWith<_$_GroupEntity> get copyWith =>
      __$$_GroupEntityCopyWithImpl<_$_GroupEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupEntityToJson(
      this,
    );
  }
}

abstract class _GroupEntity implements GroupEntity {
  const factory _GroupEntity(
      {required final String name,
      final String? speciality,
      required final int groupOid,
      final bool isLikes}) = _$_GroupEntity;

  factory _GroupEntity.fromJson(Map<String, dynamic> json) =
      _$_GroupEntity.fromJson;

  @override
  String get name;
  @override
  String? get speciality;
  @override
  int get groupOid;
  @override
  bool get isLikes;
  @override
  @JsonKey(ignore: true)
  _$$_GroupEntityCopyWith<_$_GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
