import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/Gnav.dart';
import 'package:fooddeliveryapp/CustomWidgets/LoginItem.dart';
import 'package:fooddeliveryapp/CustomWidgets/LoginRow.dart';
import 'package:fooddeliveryapp/CustomWidgets/MyButton.dart';
import 'package:fooddeliveryapp/CustomWidgets/EmailTextfield.dart';
import 'package:fooddeliveryapp/CustomWidgets/PasswordTextField.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  State<LoginScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          LoginItem(row: const LoginRow()),
          const SizedBox(height: 30),
          EmailTextField(
            emailController: widget.emailController,
          ),
          const SizedBox(height: 30),
          PasswordTextField(
            passwordController: widget.passwordController,
            label: 'Password',
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Forget Passcode?',
              style: TextStyle(
                color: Color.fromARGB(255, 239, 48, 41),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 150),
          MyButton(
            color: const Color.fromARGB(255, 239, 48, 41),
            text: 'Login',
            onPressed: () {
              if (widget.emailController.text == 'admin' &&
                  widget.passwordController.text == 'admin') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyGnav(),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
