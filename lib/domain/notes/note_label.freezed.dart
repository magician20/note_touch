// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteLabelTearOff {
  const _$NoteLabelTearOff();

  _NoteLabel call(LabelName label, {UniqueId? id}) {
    return _NoteLabel(
      label,
      id: id,
    );
  }
}

/// @nodoc
const $NoteLabel = _$NoteLabelTearOff();

/// @nodoc
mixin _$NoteLabel {
  LabelName get label => throw _privateConstructorUsedError;
  UniqueId? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteLabelCopyWith<NoteLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteLabelCopyWith<$Res> {
  factory $NoteLabelCopyWith(NoteLabel value, $Res Function(NoteLabel) then) =
      _$NoteLabelCopyWithImpl<$Res>;
  $Res call({LabelName label, UniqueId? id});
}

/// @nodoc
class _$NoteLabelCopyWithImpl<$Res> implements $NoteLabelCopyWith<$Res> {
  _$NoteLabelCopyWithImpl(this._value, this._then);

  final NoteLabel _value;
  // ignore: unused_field
  final $Res Function(NoteLabel) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LabelName,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc
abstract class _$NoteLabelCopyWith<$Res> implements $NoteLabelCopyWith<$Res> {
  factory _$NoteLabelCopyWith(
          _NoteLabel value, $Res Function(_NoteLabel) then) =
      __$NoteLabelCopyWithImpl<$Res>;
  @override
  $Res call({LabelName label, UniqueId? id});
}

/// @nodoc
class __$NoteLabelCopyWithImpl<$Res> extends _$NoteLabelCopyWithImpl<$Res>
    implements _$NoteLabelCopyWith<$Res> {
  __$NoteLabelCopyWithImpl(_NoteLabel _value, $Res Function(_NoteLabel) _then)
      : super(_value, (v) => _then(v as _NoteLabel));

  @override
  _NoteLabel get _value => super._value as _NoteLabel;

  @override
  $Res call({
    Object? label = freezed,
    Object? id = freezed,
  }) {
    return _then(_NoteLabel(
      label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LabelName,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$_NoteLabel implements _NoteLabel {
  const _$_NoteLabel(this.label, {this.id});

  @override
  final LabelName label;
  @override
  final UniqueId? id;

  @override
  String toString() {
    return 'NoteLabel(label: $label, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteLabel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$NoteLabelCopyWith<_NoteLabel> get copyWith =>
      __$NoteLabelCopyWithImpl<_NoteLabel>(this, _$identity);
}

abstract class _NoteLabel implements NoteLabel {
  const factory _NoteLabel(LabelName label, {UniqueId? id}) = _$_NoteLabel;

  @override
  LabelName get label => throw _privateConstructorUsedError;
  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteLabelCopyWith<_NoteLabel> get copyWith =>
      throw _privateConstructorUsedError;
}
