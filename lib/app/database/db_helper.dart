import 'dart:math';

import 'package:list_app/app/auth/model/auth_model.dart';
import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

var logger = Logger();

class DbHelper {
  static final DbHelper instance = DbHelper.init();
  static Database? _database;
  DbHelper.init();

  static const authTable = "authTable";
  static const userId = "userId";
  static const authuserName = "userName";
  static const userPhoneNumber = 'userPhoneNumber';
  static const userPassword = 'userPassword';

  static const userTable = "userTable";
  static const id = "id";
  static const name = "name";
  static const userName = "userName";
  static const email = "email";
  static const address = "address";
  static const phone = "phone";
  static const website = "website";
  static const company = "company";

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDb('quiz.db');
    return _database;
  }

  Future<Database> initDb(String dbName) async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, dbName);

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
   CREATE TABLE $authTable(
     $userId INTEGER PRIMARY KEY AUTOINCREMENT,
     $authuserName TEXT NOT NULL,
     $userPhoneNumber TEXT NOT NULL,
     $userPassword TEXT NOT NULL
               
   )
''');
    await db.execute('''
   CREATE TABLE $userTable(
     $id INTEGER PRIMARY KEY AUTOINCREMENT,
     $name TEXT NOT NULL,
     $userName TEXT NOT NULL,
     $email TEXT NOT NULL,
     $address TEXT NOT NULL,
     $phone TEXT NOT NULL,
     $website TEXT NOT NULL,
     $company TEXT NOT NULL,
               
   )
''');

    for (var quiz in userData) {
      final id = await db.insert(authTable, quiz.toJson());
      print("Here is your ID data: $id  $authTable");
    }
  }

  Future<AuthenticationModel> insertSignUpCredential(
      AuthenticationModel authenticationModel) async {
    final database = await instance.database;
    int id = await database!.insert(authTable, authenticationModel.toJson());
    final updatedModel = authenticationModel.copyWith(userId: id);
    logger.i('Your table Data : $updatedModel');
    print("Here is your ID data:   $authTable");

    return updatedModel;
  }

  Future<AuthenticationModel?> getLogin(
      String phoneNumber, String password) async {
    final database = await instance.database;
    var res = await database!.query(authTable,
        where: "$userPhoneNumber = ? AND $userPassword = ?",
        whereArgs: [phoneNumber, password]);

    if (res.isNotEmpty) {
      return AuthenticationModel.fromJson(res.first);
    }

    return null;
  }
}
