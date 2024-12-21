part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String phoneNumber, String password) = _Login;
  const factory AuthEvent.signUP(
      String name, String phoneNumber, String password) = _SignUp;
      
}
