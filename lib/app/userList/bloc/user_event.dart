part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUsers() = FetchUsers;
  const factory UserEvent.filterUsers(String query) = FilterUsers;
  const factory UserEvent.loadUsersFromDatabase() = LoadUsersFromDatabase;
  const factory UserEvent.updateUser(User user) = UpdateUser;

  const factory UserEvent.deleteUser(
    int userId,
  ) = DeleteUser;
  const factory UserEvent.deleteAllUsers() = DeleteAllUsers;
}
