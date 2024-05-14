import 'package:flutter/material.dart';
import 'package:planetcareapplogin/customWidgets/MyButton.dart';
import 'package:planetcareapplogin/customWidgets/MyContainer.dart';
import 'package:planetcareapplogin/customWidgets/MyRow.dart';
import 'package:planetcareapplogin/customWidgets/MyTextField.dart';
import 'package:planetcareapplogin/customWidgets/PopScreen.dart';
import 'package:planetcareapplogin/screens/signInScreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const PopScreen(
              myColor: Color.fromARGB(255, 186, 206, 195),
            ),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 123),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff27754b),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/right_leaf.png',
                  width: 40,
                ),
              ],
            ),
            const Text(
              'Create your new account',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(137, 39, 117, 75),
              ),
            ),
            const Spacer(flex: 2),
            const MyTextField(
              icon: 'assets/icons/person.png',
              hintText: 'Full Name',
              hideChars: false,
            ),
            const Spacer(flex: 1),
            const MyTextField(
              icon: 'assets/icons/email.png',
              hintText: 'E-mail',
              hideChars: false,
            ),
            const Spacer(flex: 1),
            const MyTextField(
              icon: 'assets/icons/lock.png',
              hintText: 'Password',
              hideChars: true,
            ),
            const Spacer(flex: 1),
            MyButton(onPressed: () {}, text: 'Register'),
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 1,
                  color: const Color.fromARGB(137, 39, 117, 75),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Or',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(137, 39, 117, 75),
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  width: 100,
                  height: 1,
                  color: const Color.fromARGB(137, 39, 117, 75),
                ),
              ],
            ),
            const Spacer(flex: 1),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 3),
                MyContainer(image: 'assets/icons/google.png', imagePadding: 13),
                Spacer(flex: 1),
                MyContainer(
                    image: 'assets/icons/facebook.png', imagePadding: 10),
                Spacer(flex: 1),
                MyContainer(image: 'assets/icons/apple.png', imagePadding: 11),
                Spacer(flex: 3),
              ],
            ),
            const Spacer(flex: 1),
            Row(
              children: [
                Image.asset(
                  'assets/images/left_leaf.png',
                  width: 40,
                ),
              ],
            ),
            const Spacer(flex: 1),
            MyRow(
              text1: 'Already have an account?',
              text2: 'Sign in',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
