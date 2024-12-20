part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = Initial;
  const factory UserState.loading() = Loading;
  const factory UserState.loaded(List<User> users) = Loaded;
  const factory UserState.error(String message) = Error;
}
