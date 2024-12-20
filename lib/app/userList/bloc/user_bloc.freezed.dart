// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchUsersImplCopyWith<$Res> {
  factory _$$FetchUsersImplCopyWith(
          _$FetchUsersImpl value, $Res Function(_$FetchUsersImpl) then) =
      __$$FetchUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchUsersImpl>
    implements _$$FetchUsersImplCopyWith<$Res> {
  __$$FetchUsersImplCopyWithImpl(
      _$FetchUsersImpl _value, $Res Function(_$FetchUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchUsersImpl implements FetchUsers {
  const _$FetchUsersImpl();

  @override
  String toString() {
    return 'UserEvent.fetchUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) {
    return fetchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) {
    return fetchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class FetchUsers implements UserEvent {
  const factory FetchUsers() = _$FetchUsersImpl;
}

/// @nodoc
abstract class _$$FilterUsersImplCopyWith<$Res> {
  factory _$$FilterUsersImplCopyWith(
          _$FilterUsersImpl value, $Res Function(_$FilterUsersImpl) then) =
      __$$FilterUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FilterUsersImpl>
    implements _$$FilterUsersImplCopyWith<$Res> {
  __$$FilterUsersImplCopyWithImpl(
      _$FilterUsersImpl _value, $Res Function(_$FilterUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterUsersImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterUsersImpl implements FilterUsers {
  const _$FilterUsersImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'UserEvent.filterUsers(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterUsersImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterUsersImplCopyWith<_$FilterUsersImpl> get copyWith =>
      __$$FilterUsersImplCopyWithImpl<_$FilterUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) {
    return filterUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) {
    return filterUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (filterUsers != null) {
      return filterUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) {
    return filterUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) {
    return filterUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (filterUsers != null) {
      return filterUsers(this);
    }
    return orElse();
  }
}

abstract class FilterUsers implements UserEvent {
  const factory FilterUsers(final String query) = _$FilterUsersImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$FilterUsersImplCopyWith<_$FilterUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUsersFromDatabaseImplCopyWith<$Res> {
  factory _$$LoadUsersFromDatabaseImplCopyWith(
          _$LoadUsersFromDatabaseImpl value,
          $Res Function(_$LoadUsersFromDatabaseImpl) then) =
      __$$LoadUsersFromDatabaseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUsersFromDatabaseImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadUsersFromDatabaseImpl>
    implements _$$LoadUsersFromDatabaseImplCopyWith<$Res> {
  __$$LoadUsersFromDatabaseImplCopyWithImpl(_$LoadUsersFromDatabaseImpl _value,
      $Res Function(_$LoadUsersFromDatabaseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUsersFromDatabaseImpl implements LoadUsersFromDatabase {
  const _$LoadUsersFromDatabaseImpl();

  @override
  String toString() {
    return 'UserEvent.loadUsersFromDatabase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUsersFromDatabaseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) {
    return loadUsersFromDatabase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) {
    return loadUsersFromDatabase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (loadUsersFromDatabase != null) {
      return loadUsersFromDatabase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) {
    return loadUsersFromDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) {
    return loadUsersFromDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (loadUsersFromDatabase != null) {
      return loadUsersFromDatabase(this);
    }
    return orElse();
  }
}

abstract class LoadUsersFromDatabase implements UserEvent {
  const factory LoadUsersFromDatabase() = _$LoadUsersFromDatabaseImpl;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$DeleteUserImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.deleteUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) {
    return deleteUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) {
    return deleteUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UserEvent {
  const factory DeleteUser(final int userId) = _$DeleteUserImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllUsersImplCopyWith<$Res> {
  factory _$$DeleteAllUsersImplCopyWith(_$DeleteAllUsersImpl value,
          $Res Function(_$DeleteAllUsersImpl) then) =
      __$$DeleteAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteAllUsersImpl>
    implements _$$DeleteAllUsersImplCopyWith<$Res> {
  __$$DeleteAllUsersImplCopyWithImpl(
      _$DeleteAllUsersImpl _value, $Res Function(_$DeleteAllUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllUsersImpl implements DeleteAllUsers {
  const _$DeleteAllUsersImpl();

  @override
  String toString() {
    return 'UserEvent.deleteAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(String query) filterUsers,
    required TResult Function() loadUsersFromDatabase,
    required TResult Function(int userId) deleteUser,
    required TResult Function() deleteAllUsers,
  }) {
    return deleteAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(String query)? filterUsers,
    TResult? Function()? loadUsersFromDatabase,
    TResult? Function(int userId)? deleteUser,
    TResult? Function()? deleteAllUsers,
  }) {
    return deleteAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(String query)? filterUsers,
    TResult Function()? loadUsersFromDatabase,
    TResult Function(int userId)? deleteUser,
    TResult Function()? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (deleteAllUsers != null) {
      return deleteAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUsers value) fetchUsers,
    required TResult Function(FilterUsers value) filterUsers,
    required TResult Function(LoadUsersFromDatabase value)
        loadUsersFromDatabase,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(DeleteAllUsers value) deleteAllUsers,
  }) {
    return deleteAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUsers value)? fetchUsers,
    TResult? Function(FilterUsers value)? filterUsers,
    TResult? Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(DeleteAllUsers value)? deleteAllUsers,
  }) {
    return deleteAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUsers value)? fetchUsers,
    TResult Function(FilterUsers value)? filterUsers,
    TResult Function(LoadUsersFromDatabase value)? loadUsersFromDatabase,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(DeleteAllUsers value)? deleteAllUsers,
    required TResult orElse(),
  }) {
    if (deleteAllUsers != null) {
      return deleteAllUsers(this);
    }
    return orElse();
  }
}

abstract class DeleteAllUsers implements UserEvent {
  const factory DeleteAllUsers() = _$DeleteAllUsersImpl;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

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
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
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
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
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
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$LoadedImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.loaded(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserState {
  const factory Loaded(final List<User> users) = _$LoadedImpl;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$UserStateCopyWithImpl<$Res, _$ErrorImpl>
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

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
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
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
