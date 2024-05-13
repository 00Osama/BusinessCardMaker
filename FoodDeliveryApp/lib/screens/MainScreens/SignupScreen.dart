import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/LoginItem.dart';
import 'package:fooddeliveryapp/CustomWidgets/MyButton.dart';
import 'package:fooddeliveryapp/CustomWidgets/EmailTextfield.dart';
import 'package:fooddeliveryapp/CustomWidgets/PasswordTextField.dart';
import 'package:fooddeliveryapp/CustomWidgets/SignUpAlert.dart';
import 'package:fooddeliveryapp/CustomWidgets/SignupRow.dart';
import 'package:fooddeliveryapp/models/accountsModel.dart';

bool _isValidEmail(String email) {
  String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regExp = RegExp(emailPattern);
  return regExp.hasMatch(email);
}

bool _isValidPassword(String password) {
  return password.isNotEmpty && password.length >= 8;
}

final TextEditingController passwordController = TextEditingController();

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          LoginItem(row: const SignUpRow()),
          const SizedBox(height: 30),
          EmailTextField(
            emailController: widget.emailController,
          ),
          const SizedBox(height: 30),
          PasswordTextField(
            passwordController: widget.passwordController,
            label: 'Enter Your Password',
          ),
          const SizedBox(height: 30),
          PasswordTextField(
            passwordController: widget.passwordController,
            label: 'Confirm Your Password',
          ),
          const SizedBox(height: 45),
          MyButton(
            color: const Color.fromARGB(255, 239, 48, 41),
            text: 'Sign Up',
            onPressed: () {
              if (_isValidEmail(widget.emailController.text) &&
                  _isValidPassword(passwordController.text)) {
                accountsModel.add(
                  Account(
                    email: widget.emailController.text,
                    password: passwordController.text,
                  ),
                );
                showDialog(
                  context: context,
                  builder: (context) => const SignUpAlert(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
