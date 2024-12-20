part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUsers() = FetchUsers;
  const factory UserEvent.filterUsers(String query) = FilterUsers;
}
