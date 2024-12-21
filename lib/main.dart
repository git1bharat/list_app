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
import 'package:list_app/screens/signUp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          initialRoute: '/',
          routes: {
            '/': (context) => FutureBuilder<bool>(
                  future: SessionManager().isLoggedIn(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // Use the data to determine the initial route
                      return snapshot.data == true
                          ? HomeScreen()
                          : LoginScreen();
                    } else {
                      // Show loading spinner while checking session status
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
            '/homeScreen': (context) => HomeScreen(),
            '/loginScreen': (context) => LoginScreen(),
            '/signUpScreen': (context) => SignUpScreen(),
          },
        ),
      ),
    );
  }
}
