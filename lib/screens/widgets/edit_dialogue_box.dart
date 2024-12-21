import 'package:flutter/material.dart';
import 'package:list_app/app/userList/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/userList/bloc/user_bloc.dart';

class EditUserDialog extends StatelessWidget {
  final User user;
  final void Function(User) onSave;

  const EditUserDialog({Key? key, required this.user, required this.onSave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controllers for User fields
    final nameController = TextEditingController(text: user.name);
    final emailController = TextEditingController(text: user.email);
    final phoneController = TextEditingController(text: user.phone);

    // Controllers for Address fields
    final streetController = TextEditingController(text: user.address.street);
    final suiteController = TextEditingController(text: user.address.suite);
    final cityController = TextEditingController(text: user.address.city);
    final zipcodeController = TextEditingController(text: user.address.zipcode);

    return AlertDialog(
      title: const Text('Edit User'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // User fields
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            // Address fields
            TextField(
              controller: streetController,
              decoration: const InputDecoration(labelText: 'Street'),
            ),
            TextField(
              controller: suiteController,
              decoration: const InputDecoration(labelText: 'Suite'),
            ),
            TextField(
              controller: cityController,
              decoration: const InputDecoration(labelText: 'City'),
            ),
            TextField(
              controller: zipcodeController,
              decoration: const InputDecoration(labelText: 'Zipcode'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // Create updated Address
            final updatedAddress = user.address.copyWith(
              street: streetController.text,
              suite: suiteController.text,
              city: cityController.text,
              zipcode: zipcodeController.text,
            );

            // Create updated User
            final updatedUser = user.copyWith(
              name: nameController.text,
              email: emailController.text,
              phone: phoneController.text,
              address: updatedAddress,
            );

            // Pass the updated user back to the parent
            onSave(updatedUser);

            // Dispatch the update event
            context.read<UserBloc>().add(UserEvent.updateUser(updatedUser));

            // Close the dialog
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
