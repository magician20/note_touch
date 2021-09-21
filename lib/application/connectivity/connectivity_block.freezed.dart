// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connectivity_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectivityEventTearOff {
  const _$ConnectivityEventTearOff();

  ConnectivityCheckRequested connectivityCheckRequested() {
    return const ConnectivityCheckRequested();
  }
}

/// @nodoc
const $ConnectivityEvent = _$ConnectivityEventTearOff();

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectivityCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectivityCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckRequested value)
        connectivityCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckRequested value)?
        connectivityCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  final ConnectivityEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectivityEvent) _then;
}

/// @nodoc
abstract class $ConnectivityCheckRequestedCopyWith<$Res> {
  factory $ConnectivityCheckRequestedCopyWith(ConnectivityCheckRequested value,
          $Res Function(ConnectivityCheckRequested) then) =
      _$ConnectivityCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityCheckRequestedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityCheckRequestedCopyWith<$Res> {
  _$ConnectivityCheckRequestedCopyWithImpl(ConnectivityCheckRequested _value,
      $Res Function(ConnectivityCheckRequested) _then)
      : super(_value, (v) => _then(v as ConnectivityCheckRequested));

  @override
  ConnectivityCheckRequested get _value =>
      super._value as ConnectivityCheckRequested;
}

/// @nodoc

class _$ConnectivityCheckRequested implements ConnectivityCheckRequested {
  const _$ConnectivityCheckRequested();

  @override
  String toString() {
    return 'ConnectivityEvent.connectivityCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectivityCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectivityCheckRequested,
  }) {
    return connectivityCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectivityCheckRequested,
    required TResult orElse(),
  }) {
    if (connectivityCheckRequested != null) {
      return connectivityCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckRequested value)
        connectivityCheckRequested,
  }) {
    return connectivityCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckRequested value)?
        connectivityCheckRequested,
    required TResult orElse(),
  }) {
    if (connectivityCheckRequested != null) {
      return connectivityCheckRequested(this);
    }
    return orElse();
  }
}

abstract class ConnectivityCheckRequested implements ConnectivityEvent {
  const factory ConnectivityCheckRequested() = _$ConnectivityCheckRequested;
}

/// @nodoc
class _$ConnectivityStateTearOff {
  const _$ConnectivityStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ConnectivityOnline online() {
    return const ConnectivityOnline();
  }

  ConnectivityOffline offline() {
    return const ConnectivityOffline();
  }
}

/// @nodoc
const $ConnectivityState = _$ConnectivityStateTearOff();

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() online,
    required TResult Function() offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? online,
    TResult Function()? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectivityOnline value) online,
    required TResult Function(ConnectivityOffline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectivityOnline value)? online,
    TResult Function(ConnectivityOffline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  final ConnectivityState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ConnectivityStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() online,
    required TResult Function() offline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? online,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectivityOnline value) online,
    required TResult Function(ConnectivityOffline value) offline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectivityOnline value)? online,
    TResult Function(ConnectivityOffline value)? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectivityState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ConnectivityOnlineCopyWith<$Res> {
  factory $ConnectivityOnlineCopyWith(
          ConnectivityOnline value, $Res Function(ConnectivityOnline) then) =
      _$ConnectivityOnlineCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityOnlineCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityOnlineCopyWith<$Res> {
  _$ConnectivityOnlineCopyWithImpl(
      ConnectivityOnline _value, $Res Function(ConnectivityOnline) _then)
      : super(_value, (v) => _then(v as ConnectivityOnline));

  @override
  ConnectivityOnline get _value => super._value as ConnectivityOnline;
}

/// @nodoc

class _$ConnectivityOnline implements ConnectivityOnline {
  const _$ConnectivityOnline();

  @override
  String toString() {
    return 'ConnectivityState.online()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectivityOnline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() online,
    required TResult Function() offline,
  }) {
    return online();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? online,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectivityOnline value) online,
    required TResult Function(ConnectivityOffline value) offline,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectivityOnline value)? online,
    TResult Function(ConnectivityOffline value)? offline,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class ConnectivityOnline implements ConnectivityState {
  const factory ConnectivityOnline() = _$ConnectivityOnline;
}

/// @nodoc
abstract class $ConnectivityOfflineCopyWith<$Res> {
  factory $ConnectivityOfflineCopyWith(
          ConnectivityOffline value, $Res Function(ConnectivityOffline) then) =
      _$ConnectivityOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityOfflineCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityOfflineCopyWith<$Res> {
  _$ConnectivityOfflineCopyWithImpl(
      ConnectivityOffline _value, $Res Function(ConnectivityOffline) _then)
      : super(_value, (v) => _then(v as ConnectivityOffline));

  @override
  ConnectivityOffline get _value => super._value as ConnectivityOffline;
}

/// @nodoc

class _$ConnectivityOffline implements ConnectivityOffline {
  const _$ConnectivityOffline();

  @override
  String toString() {
    return 'ConnectivityState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectivityOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() online,
    required TResult Function() offline,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? online,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectivityOnline value) online,
    required TResult Function(ConnectivityOffline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectivityOnline value)? online,
    TResult Function(ConnectivityOffline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class ConnectivityOffline implements ConnectivityState {
  const factory ConnectivityOffline() = _$ConnectivityOffline;
}
