import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailTextField({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: emailController,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Email Address',
          labelStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
