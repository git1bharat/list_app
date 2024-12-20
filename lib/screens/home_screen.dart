import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/screens/user_detail_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const FetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text("Welcome")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (users) => Center(
                    child: Container(
                      width: 390,
                      height: 900,
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Card(
                            child: ListTile(
                              title: Text(user.name),
                              subtitle: Text(user.email),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          UserDetailsScreen(user: user)),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  error: (message) => Center(child: Text('Error: $message')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

