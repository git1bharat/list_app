import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListAppButton extends StatelessWidget {
  ListAppButton({super.key, required this.buttonName, required this.onTap});
  final String buttonName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: const Color(0xFF00ff80),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
