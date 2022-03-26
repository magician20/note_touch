// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageTearOff {
  const _$PageTearOff();

  _Page call(
      {UniqueId? id,
      PageTitle? title,
      PageColor? color,
      PageStatus? status,
      PageState? state,
      BuiltList<Block>? block,
      DateTime? created_at,
      DateTime? updated_at}) {
    return _Page(
      id: id,
      title: title,
      color: color,
      status: status,
      state: state,
      block: block,
      created_at: created_at,
      updated_at: updated_at,
    );
  }
}

/// @nodoc
const $Page = _$PageTearOff();

/// @nodoc
mixin _$Page {
  UniqueId? get id =>
      throw _privateConstructorUsedError; //i can pass the id to UniqueId
  PageTitle? get title => throw _privateConstructorUsedError;
  PageColor? get color => throw _privateConstructorUsedError;
  PageStatus? get status => throw _privateConstructorUsedError;
  PageState? get state => throw _privateConstructorUsedError;
  BuiltList<Block>? get block => throw _privateConstructorUsedError; //weird
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageCopyWith<Page> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      PageTitle? title,
      PageColor? color,
      PageStatus? status,
      PageState? state,
      BuiltList<Block>? block,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class _$PageCopyWithImpl<$Res> implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  final Page _value;
  // ignore: unused_field
  final $Res Function(Page) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? block = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PageTitle?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PageColor?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState?,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as BuiltList<Block>?,
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
abstract class _$PageCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$PageCopyWith(_Page value, $Res Function(_Page) then) =
      __$PageCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      PageTitle? title,
      PageColor? color,
      PageStatus? status,
      PageState? state,
      BuiltList<Block>? block,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class __$PageCopyWithImpl<$Res> extends _$PageCopyWithImpl<$Res>
    implements _$PageCopyWith<$Res> {
  __$PageCopyWithImpl(_Page _value, $Res Function(_Page) _then)
      : super(_value, (v) => _then(v as _Page));

  @override
  _Page get _value => super._value as _Page;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? block = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_Page(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PageTitle?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PageColor?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState?,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as BuiltList<Block>?,
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

class _$_Page implements _Page {
  _$_Page(
      {this.id,
      this.title,
      this.color,
      this.status,
      this.state,
      this.block,
      this.created_at,
      this.updated_at});

  @override
  final UniqueId? id;
  @override //i can pass the id to UniqueId
  final PageTitle? title;
  @override
  final PageColor? color;
  @override
  final PageStatus? status;
  @override
  final PageState? state;
  @override
  final BuiltList<Block>? block;
  @override //weird
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Page(id: $id, title: $title, color: $color, status: $status, state: $state, block: $block, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Page &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.block, block) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(block),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$PageCopyWith<_Page> get copyWith =>
      __$PageCopyWithImpl<_Page>(this, _$identity);
}

abstract class _Page implements Page {
  factory _Page(
      {UniqueId? id,
      PageTitle? title,
      PageColor? color,
      PageStatus? status,
      PageState? state,
      BuiltList<Block>? block,
      DateTime? created_at,
      DateTime? updated_at}) = _$_Page;

  @override
  UniqueId? get id;
  @override //i can pass the id to UniqueId
  PageTitle? get title;
  @override
  PageColor? get color;
  @override
  PageStatus? get status;
  @override
  PageState? get state;
  @override
  BuiltList<Block>? get block;
  @override //weird
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$PageCopyWith<_Page> get copyWith => throw _privateConstructorUsedError;
}
