// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  return _SearchState.fromJson(json);
}

/// @nodoc
mixin _$SearchState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<GroupEntity> get listGroupEntity => throw _privateConstructorUsedError;
  List<GroupEntity> get listAuditoriumEntity =>
      throw _privateConstructorUsedError;
  List<GroupEntity> get listLecturerEntity =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<GroupEntity> listGroupEntity,
      List<GroupEntity> listAuditoriumEntity,
      List<GroupEntity> listLecturerEntity});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? listGroupEntity = null,
    Object? listAuditoriumEntity = null,
    Object? listLecturerEntity = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      listGroupEntity: null == listGroupEntity
          ? _value.listGroupEntity
          : listGroupEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      listAuditoriumEntity: null == listAuditoriumEntity
          ? _value.listAuditoriumEntity
          : listAuditoriumEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      listLecturerEntity: null == listLecturerEntity
          ? _value.listLecturerEntity
          : listLecturerEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<GroupEntity> listGroupEntity,
      List<GroupEntity> listAuditoriumEntity,
      List<GroupEntity> listLecturerEntity});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? listGroupEntity = null,
    Object? listAuditoriumEntity = null,
    Object? listLecturerEntity = null,
  }) {
    return _then(_$_SearchState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      listGroupEntity: null == listGroupEntity
          ? _value._listGroupEntity
          : listGroupEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      listAuditoriumEntity: null == listAuditoriumEntity
          ? _value._listAuditoriumEntity
          : listAuditoriumEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      listLecturerEntity: null == listLecturerEntity
          ? _value._listLecturerEntity
          : listLecturerEntity // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      required final List<GroupEntity> listGroupEntity,
      required final List<GroupEntity> listAuditoriumEntity,
      required final List<GroupEntity> listLecturerEntity})
      : _listGroupEntity = listGroupEntity,
        _listAuditoriumEntity = listAuditoriumEntity,
        _listLecturerEntity = listLecturerEntity;

  factory _$_SearchState.fromJson(Map<String, dynamic> json) =>
      _$$_SearchStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<GroupEntity> _listGroupEntity;
  @override
  List<GroupEntity> get listGroupEntity {
    if (_listGroupEntity is EqualUnmodifiableListView) return _listGroupEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listGroupEntity);
  }

  final List<GroupEntity> _listAuditoriumEntity;
  @override
  List<GroupEntity> get listAuditoriumEntity {
    if (_listAuditoriumEntity is EqualUnmodifiableListView)
      return _listAuditoriumEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAuditoriumEntity);
  }

  final List<GroupEntity> _listLecturerEntity;
  @override
  List<GroupEntity> get listLecturerEntity {
    if (_listLecturerEntity is EqualUnmodifiableListView)
      return _listLecturerEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLecturerEntity);
  }

  @override
  String toString() {
    return 'SearchState(asyncSnapshot: $asyncSnapshot, listGroupEntity: $listGroupEntity, listAuditoriumEntity: $listAuditoriumEntity, listLecturerEntity: $listLecturerEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._listGroupEntity, _listGroupEntity) &&
            const DeepCollectionEquality()
                .equals(other._listAuditoriumEntity, _listAuditoriumEntity) &&
            const DeepCollectionEquality()
                .equals(other._listLecturerEntity, _listLecturerEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_listGroupEntity),
      const DeepCollectionEquality().hash(_listAuditoriumEntity),
      const DeepCollectionEquality().hash(_listLecturerEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchStateToJson(
      this,
    );
  }
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      required final List<GroupEntity> listGroupEntity,
      required final List<GroupEntity> listAuditoriumEntity,
      required final List<GroupEntity> listLecturerEntity}) = _$_SearchState;

  factory _SearchState.fromJson(Map<String, dynamic> json) =
      _$_SearchState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<GroupEntity> get listGroupEntity;
  @override
  List<GroupEntity> get listAuditoriumEntity;
  @override
  List<GroupEntity> get listLecturerEntity;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
