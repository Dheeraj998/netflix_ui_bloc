// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainFailureTearOff {
  const _$MainFailureTearOff();

  _ClientFilure clientFilure() {
    return const _ClientFilure();
  }

  _ServerFailure serverFailure() {
    return const _ServerFailure();
  }
}

/// @nodoc
const $MainFailure = _$MainFailureTearOff();

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFilure,
    required TResult Function() serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFilure value) clientFilure,
    required TResult Function(_ServerFailure value) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res> implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  final MainFailure _value;
  // ignore: unused_field
  final $Res Function(MainFailure) _then;
}

/// @nodoc
abstract class _$ClientFilureCopyWith<$Res> {
  factory _$ClientFilureCopyWith(
          _ClientFilure value, $Res Function(_ClientFilure) then) =
      __$ClientFilureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClientFilureCopyWithImpl<$Res> extends _$MainFailureCopyWithImpl<$Res>
    implements _$ClientFilureCopyWith<$Res> {
  __$ClientFilureCopyWithImpl(
      _ClientFilure _value, $Res Function(_ClientFilure) _then)
      : super(_value, (v) => _then(v as _ClientFilure));

  @override
  _ClientFilure get _value => super._value as _ClientFilure;
}

/// @nodoc

class _$_ClientFilure implements _ClientFilure {
  const _$_ClientFilure();

  @override
  String toString() {
    return 'MainFailure.clientFilure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClientFilure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFilure,
    required TResult Function() serverFailure,
  }) {
    return clientFilure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
  }) {
    return clientFilure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
    required TResult orElse(),
  }) {
    if (clientFilure != null) {
      return clientFilure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFilure value) clientFilure,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return clientFilure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
  }) {
    return clientFilure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (clientFilure != null) {
      return clientFilure(this);
    }
    return orElse();
  }
}

abstract class _ClientFilure implements MainFailure {
  const factory _ClientFilure() = _$_ClientFilure;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$MainFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'MainFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFilure,
    required TResult Function() serverFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFilure,
    TResult Function()? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFilure value) clientFilure,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFilure value)? clientFilure,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure() = _$_ServerFailure;
}
