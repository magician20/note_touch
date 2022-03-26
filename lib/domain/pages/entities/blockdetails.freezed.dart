// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blockdetails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlockDetailsTearOff {
  const _$BlockDetailsTearOff();

  _BlockDetails call(
      {UniqueId? id,
      num? order,
      num? pageId,
      DateTime? created_at,
      DateTime? updated_at}) {
    return _BlockDetails(
      id: id,
      order: order,
      pageId: pageId,
      created_at: created_at,
      updated_at: updated_at,
    );
  }
}

/// @nodoc
const $BlockDetails = _$BlockDetailsTearOff();

/// @nodoc
mixin _$BlockDetails {
  UniqueId? get id =>
      throw _privateConstructorUsedError; //i can pass the id to UniqueId
  num? get order => throw _privateConstructorUsedError;
  num? get pageId => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockDetailsCopyWith<BlockDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockDetailsCopyWith<$Res> {
  factory $BlockDetailsCopyWith(
          BlockDetails value, $Res Function(BlockDetails) then) =
      _$BlockDetailsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      num? order,
      num? pageId,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class _$BlockDetailsCopyWithImpl<$Res> implements $BlockDetailsCopyWith<$Res> {
  _$BlockDetailsCopyWithImpl(this._value, this._then);

  final BlockDetails _value;
  // ignore: unused_field
  final $Res Function(BlockDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? pageId = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as num?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as num?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$BlockDetailsCopyWith<$Res>
    implements $BlockDetailsCopyWith<$Res> {
  factory _$BlockDetailsCopyWith(
          _BlockDetails value, $Res Function(_BlockDetails) then) =
      __$BlockDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      num? order,
      num? pageId,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class __$BlockDetailsCopyWithImpl<$Res> extends _$BlockDetailsCopyWithImpl<$Res>
    implements _$BlockDetailsCopyWith<$Res> {
  __$BlockDetailsCopyWithImpl(
      _BlockDetails _value, $Res Function(_BlockDetails) _then)
      : super(_value, (v) => _then(v as _BlockDetails));

  @override
  _BlockDetails get _value => super._value as _BlockDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? pageId = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_BlockDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as num?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as num?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_BlockDetails with DiagnosticableTreeMixin implements _BlockDetails {
  _$_BlockDetails(
      {this.id, this.order, this.pageId, this.created_at, this.updated_at});

  @override
  final UniqueId? id;
  @override //i can pass the id to UniqueId
  final num? order;
  @override
  final num? pageId;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockDetails(id: $id, order: $order, pageId: $pageId, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockDetails'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('pageId', pageId))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.pageId, pageId) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(pageId),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$BlockDetailsCopyWith<_BlockDetails> get copyWith =>
      __$BlockDetailsCopyWithImpl<_BlockDetails>(this, _$identity);
}

abstract class _BlockDetails implements BlockDetails {
  factory _BlockDetails(
      {UniqueId? id,
      num? order,
      num? pageId,
      DateTime? created_at,
      DateTime? updated_at}) = _$_BlockDetails;

  @override
  UniqueId? get id;
  @override //i can pass the id to UniqueId
  num? get order;
  @override
  num? get pageId;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$BlockDetailsCopyWith<_BlockDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
