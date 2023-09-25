// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LecturerEntity _$LecturerEntityFromJson(Map<String, dynamic> json) {
  return _LecturerEntity.fromJson(json);
}

/// @nodoc
mixin _$LecturerEntity {
  int get lecturerOid => throw _privateConstructorUsedError;
  String get fio => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get lecturer_rank => throw _privateConstructorUsedError;
  String? get chair => throw _privateConstructorUsedError;
  String? get shortFIO => throw _privateConstructorUsedError;
  bool get isLikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LecturerEntityCopyWith<LecturerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerEntityCopyWith<$Res> {
  factory $LecturerEntityCopyWith(
          LecturerEntity value, $Res Function(LecturerEntity) then) =
      _$LecturerEntityCopyWithImpl<$Res, LecturerEntity>;
  @useResult
  $Res call(
      {int lecturerOid,
      String fio,
      String? email,
      String? lecturer_rank,
      String? chair,
      String? shortFIO,
      bool isLikes});
}

/// @nodoc
class _$LecturerEntityCopyWithImpl<$Res, $Val extends LecturerEntity>
    implements $LecturerEntityCopyWith<$Res> {
  _$LecturerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lecturerOid = null,
    Object? fio = null,
    Object? email = freezed,
    Object? lecturer_rank = freezed,
    Object? chair = freezed,
    Object? shortFIO = freezed,
    Object? isLikes = null,
  }) {
    return _then(_value.copyWith(
      lecturerOid: null == lecturerOid
          ? _value.lecturerOid
          : lecturerOid // ignore: cast_nullable_to_non_nullable
              as int,
      fio: null == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer_rank: freezed == lecturer_rank
          ? _value.lecturer_rank
          : lecturer_rank // ignore: cast_nullable_to_non_nullable
              as String?,
      chair: freezed == chair
          ? _value.chair
          : chair // ignore: cast_nullable_to_non_nullable
              as String?,
      shortFIO: freezed == shortFIO
          ? _value.shortFIO
          : shortFIO // ignore: cast_nullable_to_non_nullable
              as String?,
      isLikes: null == isLikes
          ? _value.isLikes
          : isLikes // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LecturerEntityCopyWith<$Res>
    implements $LecturerEntityCopyWith<$Res> {
  factory _$$_LecturerEntityCopyWith(
          _$_LecturerEntity value, $Res Function(_$_LecturerEntity) then) =
      __$$_LecturerEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int lecturerOid,
      String fio,
      String? email,
      String? lecturer_rank,
      String? chair,
      String? shortFIO,
      bool isLikes});
}

/// @nodoc
class __$$_LecturerEntityCopyWithImpl<$Res>
    extends _$LecturerEntityCopyWithImpl<$Res, _$_LecturerEntity>
    implements _$$_LecturerEntityCopyWith<$Res> {
  __$$_LecturerEntityCopyWithImpl(
      _$_LecturerEntity _value, $Res Function(_$_LecturerEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lecturerOid = null,
    Object? fio = null,
    Object? email = freezed,
    Object? lecturer_rank = freezed,
    Object? chair = freezed,
    Object? shortFIO = freezed,
    Object? isLikes = null,
  }) {
    return _then(_$_LecturerEntity(
      lecturerOid: null == lecturerOid
          ? _value.lecturerOid
          : lecturerOid // ignore: cast_nullable_to_non_nullable
              as int,
      fio: null == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer_rank: freezed == lecturer_rank
          ? _value.lecturer_rank
          : lecturer_rank // ignore: cast_nullable_to_non_nullable
              as String?,
      chair: freezed == chair
          ? _value.chair
          : chair // ignore: cast_nullable_to_non_nullable
              as String?,
      shortFIO: freezed == shortFIO
          ? _value.shortFIO
          : shortFIO // ignore: cast_nullable_to_non_nullable
              as String?,
      isLikes: null == isLikes
          ? _value.isLikes
          : isLikes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LecturerEntity implements _LecturerEntity {
  const _$_LecturerEntity(
      {required this.lecturerOid,
      required this.fio,
      this.email,
      this.lecturer_rank,
      this.chair,
      this.shortFIO,
      this.isLikes = false});

  factory _$_LecturerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LecturerEntityFromJson(json);

  @override
  final int lecturerOid;
  @override
  final String fio;
  @override
  final String? email;
  @override
  final String? lecturer_rank;
  @override
  final String? chair;
  @override
  final String? shortFIO;
  @override
  @JsonKey()
  final bool isLikes;

  @override
  String toString() {
    return 'LecturerEntity(lecturerOid: $lecturerOid, fio: $fio, email: $email, lecturer_rank: $lecturer_rank, chair: $chair, shortFIO: $shortFIO, isLikes: $isLikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LecturerEntity &&
            (identical(other.lecturerOid, lecturerOid) ||
                other.lecturerOid == lecturerOid) &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lecturer_rank, lecturer_rank) ||
                other.lecturer_rank == lecturer_rank) &&
            (identical(other.chair, chair) || other.chair == chair) &&
            (identical(other.shortFIO, shortFIO) ||
                other.shortFIO == shortFIO) &&
            (identical(other.isLikes, isLikes) || other.isLikes == isLikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lecturerOid, fio, email,
      lecturer_rank, chair, shortFIO, isLikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LecturerEntityCopyWith<_$_LecturerEntity> get copyWith =>
      __$$_LecturerEntityCopyWithImpl<_$_LecturerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LecturerEntityToJson(
      this,
    );
  }
}

abstract class _LecturerEntity implements LecturerEntity {
  const factory _LecturerEntity(
      {required final int lecturerOid,
      required final String fio,
      final String? email,
      final String? lecturer_rank,
      final String? chair,
      final String? shortFIO,
      final bool isLikes}) = _$_LecturerEntity;

  factory _LecturerEntity.fromJson(Map<String, dynamic> json) =
      _$_LecturerEntity.fromJson;

  @override
  int get lecturerOid;
  @override
  String get fio;
  @override
  String? get email;
  @override
  String? get lecturer_rank;
  @override
  String? get chair;
  @override
  String? get shortFIO;
  @override
  bool get isLikes;
  @override
  @JsonKey(ignore: true)
  _$$_LecturerEntityCopyWith<_$_LecturerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
