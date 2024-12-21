import 'package:list_app/app/database/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static final SessionManager _instance = SessionManager._internal();

  factory SessionManager() {
    return _instance;
  }

  SessionManager._internal();

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> login(String authToken) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('authToken', authToken);
    logger.i(
        "Logged in: Auth Token set to $authToken"); // Log the auth token when logging in
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await _prefs;
    if (await isLoggedIn()) {
      // Check if currently logged in
      String token =
          await getAuthToken(); // Get the current token before removing
      print("Logging out: Auth Token removed which was $token");
      await prefs.remove('isLoggedIn');
      await prefs.remove('authToken');
    } else {
      print("Logout attempt when not logged in");
    }
  }

  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<String> getAuthToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString('authToken') ?? '';
  }
}
