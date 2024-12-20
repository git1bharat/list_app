import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/app/userList/repository/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(const UserState.initial()) {
    on<FetchUsers>(_onFetchUsers);
  }

  Future<void> _onFetchUsers(FetchUsers event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final List<User> users = await _userRepository.fetchUsers();
      emit(UserState.loaded(users));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
