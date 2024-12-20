part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loginSuccess() = _LoginSuccess;
  const factory AuthState.signupSuccess() = _SignupSuccess;
  const factory AuthState.loginFailure({required String message}) =
      _LoginFailure;
  const factory AuthState.signupFailure({required String message}) =
      _SignupFailure;
  const factory AuthState.error(String message) = _Error;
}
