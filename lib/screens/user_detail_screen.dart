import 'package:flutter/material.dart';
import 'package:list_app/app/userList/model/user_model.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
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
                  Text("Username: ${user.userName}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Email: ${user.email}", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Phone: ${user.phone}", style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text("Website: ${user.website}",
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 10),
                  Text(
                      "Address: ${user.address.street}, ${user.address.suite}, ${user.address.city}, Zip: ${user.address.zipcode}",
                      style: const TextStyle(fontSize: 16)),
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
