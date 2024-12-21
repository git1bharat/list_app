import 'package:list_app/app/database/db_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static final SessionManager _instance = SessionManager._internal();
  factory SessionManager() => _instance;

  SessionManager._internal();

  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  Future<void> login(String authToken) async {
    final prefs = await _prefs;
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('authToken', authToken);
    logger.i("Logged in: Auth Token set to $authToken");
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await _prefs;
    print("logout called. Clearing isLoggedIn and authToken.");
    await prefs.remove('isLoggedIn');
    await prefs.remove('authToken');
  }

  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await _prefs;
    final loggedIn = prefs.getBool('isLoggedIn') ?? false;
    print("isLoggedIn called. Current value: $loggedIn");
    return loggedIn;
  }

  Future<String> getAuthToken() async {
    final prefs = await _prefs;
    return prefs.getString('authToken') ?? '';
  }
}
