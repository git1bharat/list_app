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
    on<DeleteUser>(_onDeleteUser);
    on<FilterUsers>(_onFilterUsers);
    on<UpdateUser>(_onUpdateUser);
  }

  Future<void> _onFetchUsers(FetchUsers event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final List<User> existingUsers =
          await _userRepository.getUsersFromDatabase();

      if (existingUsers.isNotEmpty) {
        print('Loading users directly from the database: $existingUsers');
        emit(UserState.loaded(existingUsers));
      } else {
        await _userRepository.fetchAndStoreUsers();
        print('Users successfully fetched and stored from API');

        final List<User> users = await _userRepository.getUsersFromDatabase();
        print('Users loaded from database after API fetch: $users');
        emit(UserState.loaded(users));
      }
    } catch (e) {
      print('Error in FetchUsers: $e');
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onDeleteUser(DeleteUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      await _userRepository.deleteUser(event.userId);
      final users = await _userRepository.getUsersFromDatabase();
      emit(UserState.loaded(users));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onFilterUsers(
      FilterUsers event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      final List<User> filteredUsers =
          await _userRepository.getUsersBySearchTerm(event.query);
      emit(UserState.loaded(filteredUsers));
    } catch (e) {
      print('Error filtering users: $e');
      emit(UserState.error(e.toString()));
    }
  }

  Future<void> _onUpdateUser(UpdateUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      await _userRepository.updateUser(event.user);
      final users = await _userRepository.getUsersFromDatabase();
      emit(UserState.loaded(users));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
