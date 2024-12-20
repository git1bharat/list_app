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
        title: const Text('User List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              // Trigger delete all users
              context.read<UserBloc>().add(const DeleteAllUsers());
            },
          ),
        ],
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
                  loaded: (users) => users.isNotEmpty
                      ? Center(
                          child: SizedBox(
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
                                    trailing: IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        // Trigger delete for specific user
                                        context
                                            .read<UserBloc>()
                                            .add(DeleteUser(user.id));
                                      },
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              UserDetailsScreen(user: user),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : const Center(child: Text("No users available")),
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
