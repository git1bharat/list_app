import 'package:dio/dio.dart';
import 'package:list_app/app/userList/model/user_model.dart';

class UserRepository {
  final Dio _dio = Dio();

  UserRepository() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get('/users');
      if (response.statusCode == 200) {
        List<dynamic> usersJson = response.data;
        return usersJson.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }
}
