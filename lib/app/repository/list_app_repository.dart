import 'dart:developer';
import 'dart:math' hide log;
import 'package:list_app/app/auth/auth_token.dart';
import 'package:list_app/app/auth/model/auth_model.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListAppRepository {
  final DbHelper _dbHelper = DbHelper.instance;

  // Method to register a new user
  Future<String> signUp(
      String name, String userPhoneNumber, String userPassword) async {
    try {
      final database = await _dbHelper.database;

      // Check if the phone number is already registered
      var existingUser = await database!.query(
        DbHelper.authTable,
        where: "${DbHelper.userPhoneNumber} = ?",
        whereArgs: [userPhoneNumber],
      );

      if (existingUser.isNotEmpty) {
        return "number_already_exists";
      }

      // If not, proceed with registration
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

// Method to authenticate a user
  Future<String> loginUser(
      {required String phoneNumber, required String password}) async {
    try {
      final database = await _dbHelper.database;

      // First, check if the phone number exists in the database
      var phoneCheck = await database!.query(
        DbHelper.authTable,
        where: "${DbHelper.userPhoneNumber} = ?",
        whereArgs: [phoneNumber],
      );

      if (phoneCheck.isEmpty) {
        return "number_not_found"; // Return this if the phone number is not found
      }

      // If phone number exists, check if the password matches
      var result = await database.query(
        DbHelper.authTable,
        where:
            "${DbHelper.userPhoneNumber} = ? AND ${DbHelper.userPassword} = ?",
        whereArgs: [phoneNumber, password],
      );

      if (result.isEmpty) {
        return "incorrect_password"; // Return this if the password does not match
      } else {
        // Assume generating or retrieving an authToken somehow after a successful login
        String authToken =
            "generated_or_retrieved_token"; // Placeholder for actual token logic
        await SessionManager()
            .login(authToken); // Store the authToken using SessionManager
        return "success";
      }
    } catch (e) {
      log("Error: Exception during login: $e");
      return "login_failed";
    }
  }

  // Method to authenticate a user
  // Future<String> loginUser(
  //     {required String phoneNumber, required String password}) async {
  //   try {
  //     final database = await _dbHelper.database;

  //     // Check if the mobile number exists
  //     var phoneCheck = await database!.query(
  //       DbHelper.authTable,
  //       where: "${DbHelper.userPhoneNumber} = ?",
  //       whereArgs: [phoneNumber],
  //     );

  //     if (phoneCheck.isEmpty) {
  //       return "number_not_found";
  //     }

  //     // Check if the mobile number and password combination matches
  //     var result = await database.query(
  //       DbHelper.authTable,
  //       where:
  //           "${DbHelper.userPhoneNumber} = ? AND ${DbHelper.userPassword} = ?",
  //       whereArgs: [phoneNumber, password],
  //     );

  //     if (result.isEmpty) {
  //       return "incorrect_password";
  //     }

  //     return "success";
  //   } catch (e) {
  //     log("Error: Exception during login: $e");
  //     return "login_failed";
  //   }
  // }

  Future<void> logoutUser() async {
    try {
      await SessionManager()
          .logout(); // Use SessionManager to handle the logout
    } catch (e) {
      log("Error during logout: $e");
      throw Exception('Logout failed: $e');
    }
  }
}
