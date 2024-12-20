import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_app/app/repository/list_app_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ListAppRepository _listAppRepository;

  AuthBloc(this._listAppRepository) : super(const AuthState.initial()) {
    on<_Login>((event, emit) async {
      emit(const AuthState.loading());
      try {
        final result = await _listAppRepository.loginUser(
            phoneNumber: event.phoneNumber, password: event.password);
        switch (result) {
          case "success":
            emit(const AuthState.loginSuccess());
            break;
          case "number_not_found":
            emit(const AuthState.loginFailure(
                message: "Account not found with this number"));
            break;
          case "incorrect_password":
            emit(const AuthState.loginFailure(message: "Incorrect password"));
            break;
          default:
            emit(const AuthState.error("An unexpected error occurred"));
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    on<_SignUp>((event, emit) async {
      print("Signup started for: ${event.phoneNumber}");
      emit(const AuthState.loading());
      try {
        final result = await _listAppRepository.signUp(
            event.name, event.phoneNumber, event.password);
        print("Signup result: $result");
        switch (result) {
          case "success":
            emit(const AuthState.signupSuccess());
            break;
          case "number_already_exists":
            emit(const AuthState.signupFailure(
                message: "An account already exists with this number"));
            break;
          default:
            emit(const AuthState.error(
                "An unexpected error occurred during signup"));
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });
  }
}
