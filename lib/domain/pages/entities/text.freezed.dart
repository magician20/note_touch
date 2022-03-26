// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextTearOff {
  const _$TextTearOff();

  _Text call({BlockDetails? details, TextBody? content}) {
    return _Text(
      details: details,
      content: content,
    );
  }
}

/// @nodoc
const $Text = _$TextTearOff();

/// @nodoc
mixin _$Text {
  BlockDetails? get details => throw _privateConstructorUsedError;
  TextBody? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res>;
  $Res call({BlockDetails? details, TextBody? content});

  $BlockDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$TextCopyWithImpl<$Res> implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  final Text _value;
  // ignore: unused_field
  final $Res Function(Text) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as BlockDetails?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as TextBody?,
    ));
  }

  @override
  $BlockDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $BlockDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$TextCopyWith(_Text value, $Res Function(_Text) then) =
      __$TextCopyWithImpl<$Res>;
  @override
  $Res call({BlockDetails? details, TextBody? content});

  @override
  $BlockDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$TextCopyWithImpl<$Res> extends _$TextCopyWithImpl<$Res>
    implements _$TextCopyWith<$Res> {
  __$TextCopyWithImpl(_Text _value, $Res Function(_Text) _then)
      : super(_value, (v) => _then(v as _Text));

  @override
  _Text get _value => super._value as _Text;

  @override
  $Res call({
    Object? details = freezed,
    Object? content = freezed,
  }) {
    return _then(_Text(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as BlockDetails?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as TextBody?,
    ));
  }
}

/// @nodoc

class _$_Text with DiagnosticableTreeMixin implements _Text {
  _$_Text({this.details, this.content});

  @override
  final BlockDetails? details;
  @override
  final TextBody? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Text(details: $details, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Text'))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Text &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$TextCopyWith<_Text> get copyWith =>
      __$TextCopyWithImpl<_Text>(this, _$identity);
}

abstract class _Text implements Text {
  factory _Text({BlockDetails? details, TextBody? content}) = _$_Text;

  @override
  BlockDetails? get details;
  @override
  TextBody? get content;
  @override
  @JsonKey(ignore: true)
  _$TextCopyWith<_Text> get copyWith => throw _privateConstructorUsedError;
}
