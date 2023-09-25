// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auditorium_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuditoriumEntity _$AuditoriumEntityFromJson(Map<String, dynamic> json) {
  return _AuditoriumEntity.fromJson(json);
}

/// @nodoc
mixin _$AuditoriumEntity {
  String? get building => throw _privateConstructorUsedError;
  String? get typeOfAuditorium => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  int get auditoriumOid => throw _privateConstructorUsedError;
  bool get isLikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditoriumEntityCopyWith<AuditoriumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditoriumEntityCopyWith<$Res> {
  factory $AuditoriumEntityCopyWith(
          AuditoriumEntity value, $Res Function(AuditoriumEntity) then) =
      _$AuditoriumEntityCopyWithImpl<$Res, AuditoriumEntity>;
  @useResult
  $Res call(
      {String? building,
      String? typeOfAuditorium,
      String name,
      String? number,
      int auditoriumOid,
      bool isLikes});
}

/// @nodoc
class _$AuditoriumEntityCopyWithImpl<$Res, $Val extends AuditoriumEntity>
    implements $AuditoriumEntityCopyWith<$Res> {
  _$AuditoriumEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? building = freezed,
    Object? typeOfAuditorium = freezed,
    Object? name = null,
    Object? number = freezed,
    Object? auditoriumOid = null,
    Object? isLikes = null,
  }) {
    return _then(_value.copyWith(
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfAuditorium: freezed == typeOfAuditorium
          ? _value.typeOfAuditorium
          : typeOfAuditorium // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      auditoriumOid: null == auditoriumOid
          ? _value.auditoriumOid
          : auditoriumOid // ignore: cast_nullable_to_non_nullable
              as int,
      isLikes: null == isLikes
          ? _value.isLikes
          : isLikes // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuditoriumEntityCopyWith<$Res>
    implements $AuditoriumEntityCopyWith<$Res> {
  factory _$$_AuditoriumEntityCopyWith(
          _$_AuditoriumEntity value, $Res Function(_$_AuditoriumEntity) then) =
      __$$_AuditoriumEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? building,
      String? typeOfAuditorium,
      String name,
      String? number,
      int auditoriumOid,
      bool isLikes});
}

/// @nodoc
class __$$_AuditoriumEntityCopyWithImpl<$Res>
    extends _$AuditoriumEntityCopyWithImpl<$Res, _$_AuditoriumEntity>
    implements _$$_AuditoriumEntityCopyWith<$Res> {
  __$$_AuditoriumEntityCopyWithImpl(
      _$_AuditoriumEntity _value, $Res Function(_$_AuditoriumEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? building = freezed,
    Object? typeOfAuditorium = freezed,
    Object? name = null,
    Object? number = freezed,
    Object? auditoriumOid = null,
    Object? isLikes = null,
  }) {
    return _then(_$_AuditoriumEntity(
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfAuditorium: freezed == typeOfAuditorium
          ? _value.typeOfAuditorium
          : typeOfAuditorium // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      auditoriumOid: null == auditoriumOid
          ? _value.auditoriumOid
          : auditoriumOid // ignore: cast_nullable_to_non_nullable
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
class _$_AuditoriumEntity implements _AuditoriumEntity {
  const _$_AuditoriumEntity(
      {this.building,
      this.typeOfAuditorium,
      required this.name,
      this.number,
      required this.auditoriumOid,
      this.isLikes = false});

  factory _$_AuditoriumEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuditoriumEntityFromJson(json);

  @override
  final String? building;
  @override
  final String? typeOfAuditorium;
  @override
  final String name;
  @override
  final String? number;
  @override
  final int auditoriumOid;
  @override
  @JsonKey()
  final bool isLikes;

  @override
  String toString() {
    return 'AuditoriumEntity(building: $building, typeOfAuditorium: $typeOfAuditorium, name: $name, number: $number, auditoriumOid: $auditoriumOid, isLikes: $isLikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuditoriumEntity &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.typeOfAuditorium, typeOfAuditorium) ||
                other.typeOfAuditorium == typeOfAuditorium) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.auditoriumOid, auditoriumOid) ||
                other.auditoriumOid == auditoriumOid) &&
            (identical(other.isLikes, isLikes) || other.isLikes == isLikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, building, typeOfAuditorium, name,
      number, auditoriumOid, isLikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuditoriumEntityCopyWith<_$_AuditoriumEntity> get copyWith =>
      __$$_AuditoriumEntityCopyWithImpl<_$_AuditoriumEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuditoriumEntityToJson(
      this,
    );
  }
}

abstract class _AuditoriumEntity implements AuditoriumEntity {
  const factory _AuditoriumEntity(
      {final String? building,
      final String? typeOfAuditorium,
      required final String name,
      final String? number,
      required final int auditoriumOid,
      final bool isLikes}) = _$_AuditoriumEntity;

  factory _AuditoriumEntity.fromJson(Map<String, dynamic> json) =
      _$_AuditoriumEntity.fromJson;

  @override
  String? get building;
  @override
  String? get typeOfAuditorium;
  @override
  String get name;
  @override
  String? get number;
  @override
  int get auditoriumOid;
  @override
  bool get isLikes;
  @override
  @JsonKey(ignore: true)
  _$$_AuditoriumEntityCopyWith<_$_AuditoriumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
