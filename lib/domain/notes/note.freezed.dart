// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {UniqueId? id,
      StringSingleLine? title,
      NoteBody? body,
      NoteColor? color,
      NoteStatus? noteStatus,
      NoteState? noteStat}) {
    return _Note(
      id: id,
      title: title,
      body: body,
      color: color,
      noteStatus: noteStatus,
      noteStat: noteStat,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  UniqueId? get id =>
      throw _privateConstructorUsedError; //i can pass the id to UniqueId
  StringSingleLine? get title => throw _privateConstructorUsedError;
  NoteBody? get body => throw _privateConstructorUsedError;
  NoteColor? get color => throw _privateConstructorUsedError;
  NoteStatus? get noteStatus => throw _privateConstructorUsedError;
  NoteState? get noteStat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      StringSingleLine? title,
      NoteBody? body,
      NoteColor? color,
      NoteStatus? noteStatus,
      NoteState? noteStat});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? color = freezed,
    Object? noteStatus = freezed,
    Object? noteStat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NoteColor?,
      noteStatus: noteStatus == freezed
          ? _value.noteStatus
          : noteStatus // ignore: cast_nullable_to_non_nullable
              as NoteStatus?,
      noteStat: noteStat == freezed
          ? _value.noteStat
          : noteStat // ignore: cast_nullable_to_non_nullable
              as NoteState?,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      StringSingleLine? title,
      NoteBody? body,
      NoteColor? color,
      NoteStatus? noteStatus,
      NoteState? noteStat});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? color = freezed,
    Object? noteStatus = freezed,
    Object? noteStat = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as NoteBody?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NoteColor?,
      noteStatus: noteStatus == freezed
          ? _value.noteStatus
          : noteStatus // ignore: cast_nullable_to_non_nullable
              as NoteStatus?,
      noteStat: noteStat == freezed
          ? _value.noteStat
          : noteStat // ignore: cast_nullable_to_non_nullable
              as NoteState?,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {this.id,
      this.title,
      this.body,
      this.color,
      this.noteStatus,
      this.noteStat})
      : super._();

  @override
  final UniqueId? id;
  @override //i can pass the id to UniqueId
  final StringSingleLine? title;
  @override
  final NoteBody? body;
  @override
  final NoteColor? color;
  @override
  final NoteStatus? noteStatus;
  @override
  final NoteState? noteStat;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, body: $body, color: $color, noteStatus: $noteStatus, noteStat: $noteStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Note &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.noteStatus, noteStatus) &&
            const DeepCollectionEquality().equals(other.noteStat, noteStat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(noteStatus),
      const DeepCollectionEquality().hash(noteStat));

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {UniqueId? id,
      StringSingleLine? title,
      NoteBody? body,
      NoteColor? color,
      NoteStatus? noteStatus,
      NoteState? noteStat}) = _$_Note;
  const _Note._() : super._();

  @override
  UniqueId? get id;
  @override //i can pass the id to UniqueId
  StringSingleLine? get title;
  @override
  NoteBody? get body;
  @override
  NoteColor? get color;
  @override
  NoteStatus? get noteStatus;
  @override
  NoteState? get noteStat;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
