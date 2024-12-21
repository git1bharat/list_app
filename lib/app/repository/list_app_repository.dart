import 'dart:developer';
import 'dart:math' hide log;
import 'package:list_app/app/auth/auth_token.dart';
import 'package:list_app/app/auth/model/auth_model.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListAppRepository {
  final DbHelper _dbHelper = DbHelper.instance;

  Future<String> signUp(
      String name, String userPhoneNumber, String userPassword) async {
    try {
      final database = await _dbHelper.database;

      var existingUser = await database!.query(
        DbHelper.authTable,
        where: "${DbHelper.userPhoneNumber} = ?",
        whereArgs: [userPhoneNumber],
      );

      if (existingUser.isNotEmpty) {
        return "number_already_exists";
      }

      await _dbHelper.insertSignUpCredential(
        AuthenticationModel(
          authuserName: name,
          userPhoneNumber: userPhoneNumber,
          userPassword: userPassword,
        ),
      );
      return "success";
    } catch (e) {
      log("Error: Exception during signup: $e");
      return "signup_failed";
    }
  }

  Future<String> loginUser(
      {required String phoneNumber, required String password}) async {
    try {
      final database = await _dbHelper.database;

      var phoneCheck = await database!.query(
        DbHelper.authTable,
        where: "${DbHelper.userPhoneNumber} = ?",
        whereArgs: [phoneNumber],
      );

      if (phoneCheck.isEmpty) {
        return "number_not_found";
      }

      var result = await database.query(
        DbHelper.authTable,
        where:
            "${DbHelper.userPhoneNumber} = ? AND ${DbHelper.userPassword} = ?",
        whereArgs: [phoneNumber, password],
      );

      if (result.isEmpty) {
        return "incorrect_password";
      } else {
        String authToken = "generated_or_retrieved_token";
        await SessionManager().login(authToken);
        return "success";
      }
    } catch (e) {
      log("Error: Exception during login: $e");
      return "login_failed";
    }
  }
}

Future<void> logoutUser() async {
  try {
    await SessionManager().logout();
  } catch (e) {
    log("Error during logout: $e");
    throw Exception('Logout failed: $e');
  }
}
