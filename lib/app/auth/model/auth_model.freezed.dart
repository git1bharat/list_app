// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) {
  return _AuthenticationModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationModel {
  int? get userId => throw _privateConstructorUsedError;
  String get authuserName => throw _privateConstructorUsedError;
  String get userPhoneNumber => throw _privateConstructorUsedError;
  String get userPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationModelCopyWith<AuthenticationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationModelCopyWith<$Res> {
  factory $AuthenticationModelCopyWith(
          AuthenticationModel value, $Res Function(AuthenticationModel) then) =
      _$AuthenticationModelCopyWithImpl<$Res, AuthenticationModel>;
  @useResult
  $Res call(
      {int? userId,
      String authuserName,
      String userPhoneNumber,
      String userPassword});
}

/// @nodoc
class _$AuthenticationModelCopyWithImpl<$Res, $Val extends AuthenticationModel>
    implements $AuthenticationModelCopyWith<$Res> {
  _$AuthenticationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? authuserName = null,
    Object? userPhoneNumber = null,
    Object? userPassword = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      authuserName: null == authuserName
          ? _value.authuserName
          : authuserName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: null == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationModelImplCopyWith<$Res>
    implements $AuthenticationModelCopyWith<$Res> {
  factory _$$AuthenticationModelImplCopyWith(_$AuthenticationModelImpl value,
          $Res Function(_$AuthenticationModelImpl) then) =
      __$$AuthenticationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      String authuserName,
      String userPhoneNumber,
      String userPassword});
}

/// @nodoc
class __$$AuthenticationModelImplCopyWithImpl<$Res>
    extends _$AuthenticationModelCopyWithImpl<$Res, _$AuthenticationModelImpl>
    implements _$$AuthenticationModelImplCopyWith<$Res> {
  __$$AuthenticationModelImplCopyWithImpl(_$AuthenticationModelImpl _value,
      $Res Function(_$AuthenticationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? authuserName = null,
    Object? userPhoneNumber = null,
    Object? userPassword = null,
  }) {
    return _then(_$AuthenticationModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      authuserName: null == authuserName
          ? _value.authuserName
          : authuserName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: null == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationModelImpl
    with DiagnosticableTreeMixin
    implements _AuthenticationModel {
  _$AuthenticationModelImpl(
      {this.userId,
      required this.authuserName,
      required this.userPhoneNumber,
      required this.userPassword});

  factory _$AuthenticationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final String authuserName;
  @override
  final String userPhoneNumber;
  @override
  final String userPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationModel(userId: $userId, authuserName: $authuserName, userPhoneNumber: $userPhoneNumber, userPassword: $userPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('authuserName', authuserName))
      ..add(DiagnosticsProperty('userPhoneNumber', userPhoneNumber))
      ..add(DiagnosticsProperty('userPassword', userPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.authuserName, authuserName) ||
                other.authuserName == authuserName) &&
            (identical(other.userPhoneNumber, userPhoneNumber) ||
                other.userPhoneNumber == userPhoneNumber) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, authuserName, userPhoneNumber, userPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationModelImplCopyWith<_$AuthenticationModelImpl> get copyWith =>
      __$$AuthenticationModelImplCopyWithImpl<_$AuthenticationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationModel implements AuthenticationModel {
  factory _AuthenticationModel(
      {final int? userId,
      required final String authuserName,
      required final String userPhoneNumber,
      required final String userPassword}) = _$AuthenticationModelImpl;

  factory _AuthenticationModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticationModelImpl.fromJson;

  @override
  int? get userId;
  @override
  String get authuserName;
  @override
  String get userPhoneNumber;
  @override
  String get userPassword;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationModelImplCopyWith<_$AuthenticationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
