// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) login,
    required TResult Function(String name, String phoneNumber, String password)
        signUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? login,
    TResult? Function(String name, String phoneNumber, String password)? signUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? login,
    TResult Function(String name, String phoneNumber, String password)? signUP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignUp value)? signUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.phoneNumber, this.password);

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) login,
    required TResult Function(String name, String phoneNumber, String password)
        signUP,
  }) {
    return login(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? login,
    TResult? Function(String name, String phoneNumber, String password)? signUP,
  }) {
    return login?.call(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? login,
    TResult Function(String name, String phoneNumber, String password)? signUP,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUP,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignUp value)? signUP,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUP,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final String phoneNumber, final String password) =
      _$LoginImpl;

  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phoneNumber, String password});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$SignUpImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(this.name, this.phoneNumber, this.password);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUP(name: $name, phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String password) login,
    required TResult Function(String name, String phoneNumber, String password)
        signUP,
  }) {
    return signUP(name, phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String password)? login,
    TResult? Function(String name, String phoneNumber, String password)? signUP,
  }) {
    return signUP?.call(name, phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String password)? login,
    TResult Function(String name, String phoneNumber, String password)? signUP,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(name, phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUP,
  }) {
    return signUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignUp value)? signUP,
  }) {
    return signUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUP,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(
          final String name, final String phoneNumber, final String password) =
      _$SignUpImpl;

  String get name;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'AuthState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
          _$SignupSuccessImpl value, $Res Function(_$SignupSuccessImpl) then) =
      __$$SignupSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
      _$SignupSuccessImpl _value, $Res Function(_$SignupSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupSuccessImpl implements _SignupSuccess {
  const _$SignupSuccessImpl();

  @override
  String toString() {
    return 'AuthState.signupSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return signupSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return signupSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignupSuccess implements AuthState {
  const factory _SignupSuccess() = _$SignupSuccessImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.loginFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return loginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return loginFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthState {
  const factory _LoginFailure({required final String message}) =
      _$LoginFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFailureImplCopyWith<$Res> {
  factory _$$SignupFailureImplCopyWith(
          _$SignupFailureImpl value, $Res Function(_$SignupFailureImpl) then) =
      __$$SignupFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupFailureImpl>
    implements _$$SignupFailureImplCopyWith<$Res> {
  __$$SignupFailureImplCopyWithImpl(
      _$SignupFailureImpl _value, $Res Function(_$SignupFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupFailureImpl implements _SignupFailure {
  const _$SignupFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.signupFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      __$$SignupFailureImplCopyWithImpl<_$SignupFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return signupFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return signupFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return signupFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return signupFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(this);
    }
    return orElse();
  }
}

abstract class _SignupFailure implements AuthState {
  const factory _SignupFailure({required final String message}) =
      _$SignupFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function() signupSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function(String message) signupFailure,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function()? signupSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function(String message)? signupFailure,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function()? signupSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function(String message)? signupFailure,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_SignupFailure value) signupFailure,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_SignupFailure value)? signupFailure,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_SignupFailure value)? signupFailure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
