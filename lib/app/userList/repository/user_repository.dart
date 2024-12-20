import 'package:dio/dio.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:list_app/app/userList/model/user_model.dart';

import 'package:dio/dio.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:list_app/app/userList/model/user_model.dart';

class UserRepository {
  final Dio _dio = Dio();
  final DbHelper _dbHelper = DbHelper.init();

  // Fetch users from the API and store them in the database
  Future<void> fetchAndStoreUsers() async {
    try {
      // Fetch data from the API
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        List<User> userList =
            (response.data as List).map((user) => User.fromJson(user)).toList();

        // Save each user to the database
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

  // Retrieve users from the database
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
      await _dbHelper.deleteUserById(userId); // Deletes user by their ID
      print('User with ID $userId deleted successfully');
    } catch (e) {
      print('Error deleting user with ID $userId: $e');
      throw Exception('Error deleting user');
    }
  }
}
