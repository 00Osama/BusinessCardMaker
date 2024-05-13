import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController passwordController;
  final String label;

  const PasswordTextField({
    super.key,
    required this.passwordController,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
