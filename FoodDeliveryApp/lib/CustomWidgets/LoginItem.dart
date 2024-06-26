import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/MainScreens/LoginScreen.dart';
import 'package:fooddeliveryapp/screens/MainScreens/SignupScreen.dart';

// ignore: must_be_immutable
class LoginItem extends StatefulWidget {
  LoginItem({super.key, required this.row});

  Widget row;

  @override
  State<LoginItem> createState() => _LoginItemState();
}

class _LoginItemState extends State<LoginItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
        gradient: const LinearGradient(
          colors: [Color(0xffffffff), Color(0xffe5e5e5)],
          end: Alignment.centerLeft,
          begin: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: SizedBox(
        height: 285,
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/startScreens/hat-removebg.png',
              width: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 100),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: const Text(
                    'Sign-Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 23),
            widget.row
          ],
        ),
      ),
    );
  }
}
