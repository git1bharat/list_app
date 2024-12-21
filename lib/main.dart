import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/auth/auth_token.dart';
import 'package:list_app/app/auth/bloc/bloc/auth_bloc.dart';
import 'package:list_app/app/database/db_helper.dart';
import 'package:list_app/app/repository/list_app_repository.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';
import 'package:list_app/app/userList/repository/user_repository.dart';
import 'package:list_app/screens/home_screen.dart';
import 'package:list_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize DbHelper here
    final DbHelper dbHelper = DbHelper.init();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(ListAppRepository()),
        ),
        BlocProvider(
            create: (context) => UserBloc(
                  UserRepository(),
                )),
      ],
      child: ConnectionNotifier(
        connectionNotificationOptions: const ConnectionNotificationOptions(
          alignment: AlignmentDirectional.bottomCenter,
          connectedText: 'Connected',
          disconnectedText: 'Check internet connection',
        ),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: FutureBuilder(
            future: SessionManager().isLoggedIn(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data == true) {
                  // User is logged in, send them to the home screen
                  return HomeScreen();
                } else {
                  // User is not logged in, send them to the login screen
                  return LoginScreen();
                }
              } else {
                // Show a loading spinner while checking login status
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
