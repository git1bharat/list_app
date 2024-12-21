import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/auth/auth_token.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/screens/login_screen.dart';
import 'package:list_app/screens/user_detail_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/screens/user_detail_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/screens/user_detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const FetchUsers());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String searchQuery) {
    if (searchQuery.isEmpty) {
      // Optionally re-fetch the original list if needed when search is cleared
      context.read<UserBloc>().add(const FetchUsers());
    } else {
      context.read<UserBloc>().add(UserEvent.filterUsers(searchQuery));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await SessionManager().logout();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                onChanged:
                    _onSearchChanged, // Use onChanged instead of onSubmitted
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text("Welcome")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (users) => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return Card(
                        child: ListTile(
                          title: Text(user.name),
                          subtitle: Text(user.email),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              context.read<UserBloc>().add(DeleteUser(user.id));
                            },
                          ),
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
