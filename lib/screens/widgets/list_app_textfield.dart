import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListAppTextField extends StatelessWidget {
  ListAppTextField(
      {super.key,
      required this.controller,
      required this.prefixIcon,
      required this.hintText,
      this.validation,
      this.keyboardType});

  final String hintText;
  final Icon prefixIcon;
  final TextInputType? keyboardType;
  TextEditingController controller;
  final String? Function(String?)? validation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xFF00ff80).withOpacity(0.1),
                  filled: true,
                  prefixIcon: prefixIcon),
              validator: validation!),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
