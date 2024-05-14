import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EmailTextField extends StatefulWidget {
  EmailTextField({
    Key? key,
    required this.emailController,
    required this.errorText,
  }) : super(key: key);

  final TextEditingController emailController;
  String? errorText;

  @override
  EmailTextFieldState createState() => EmailTextFieldState();
}

class EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: widget.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          errorText: widget.errorText,
          hintText: 'email address',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {
          setState(() {
            widget.errorText =
                _isValidEmail(value) ? null : 'Invalid email address';
          });
        },
      ),
    );
  }

  bool _isValidEmail(String email) {
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(emailRegex);
    return regExp.hasMatch(email);
  }
}
