import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:list_app/app/auth/bloc/bloc/auth_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(ListAppRepository()),
        ),
        BlocProvider(
          create: (context) => UserBloc(UserRepository()),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
