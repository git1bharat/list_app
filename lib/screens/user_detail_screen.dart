import 'package:flutter/material.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:list_app/screens/widgets/edit_dialogue_box.dart';

class UserDetailsScreen extends StatefulWidget {
  final User user;

  const UserDetailsScreen({required this.user});

  @override
  _UserDetailsScreenState createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => EditUserDialog(
        user: user,
        onSave: (updatedUser) {
          setState(() {
            user = updatedUser;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditDialog(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name: ${user.name}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text("Username: ${user.username}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Email: ${user.email}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Phone: ${user.phone}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Website: ${user.website}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text(
                    "Address: ${user.address.street}, ${user.address.suite}, ${user.address.city}, Zip: ${user.address.zipcode}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text("Company: ${user.company.name}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("CatchPhrase: ${user.company.catchPhrase}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Business: ${user.company.bs}",
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
