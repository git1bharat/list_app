import 'package:dio/dio.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:list_app/app/userList/model/user_model.dart';

import 'package:dio/dio.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:list_app/app/userList/model/user_model.dart';

class UserRepository {
  final Dio _dio = Dio();
  final DbHelper _dbHelper = DbHelper.init();

  Future<void> fetchAndStoreUsers() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        List<User> userList =
            (response.data as List).map((user) => User.fromJson(user)).toList();

        for (var user in userList) {
          await _dbHelper.insertUser(user);
        }
        print('Users successfully stored in the database');
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      print('Error fetching and storing users: $e');
      throw Exception('Error fetching and storing users');
    }
  }

  Future<List<User>> getUsersFromDatabase() async {
    try {
      return await _dbHelper.getUsers();
    } catch (e) {
      print('Error retrieving users from database: $e');
      throw Exception('Error retrieving users from database');
    }
  }

  Future<void> deleteUser(int userId) async {
    try {
      await _dbHelper.deleteUserById(userId);
      print('User with ID $userId deleted successfully');
    } catch (e) {
      print('Error deleting user with ID $userId: $e');
      throw Exception('Error deleting user');
    }
  }

  Future<List<User>> getUsersBySearchTerm(String searchTerm) async {
    return await _dbHelper.filterUsers(searchTerm);
  }

  Future<void> updateUser(User user) async {
    try {
      await _dbHelper.updateUser(user);
      print('User with ID ${user.id} updated successfully');
    } catch (e) {
      print('Error updating user with ID ${user.id}: $e');
      throw Exception('Error updating user');
    }
  }
}
