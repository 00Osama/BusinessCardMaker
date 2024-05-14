import 'package:flutter/material.dart';
import 'package:planetcareapplogin/customWidgets/MyButton.dart';
import 'package:planetcareapplogin/customWidgets/MyCheckBox.dart';
import 'package:planetcareapplogin/customWidgets/MyRow.dart';
import 'package:planetcareapplogin/customWidgets/MyTextField.dart';
import 'package:planetcareapplogin/customWidgets/PopScreen.dart';
import 'package:planetcareapplogin/screens/signUpScreen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PopScreen(
                myColor: Color.fromARGB(110, 186, 206, 195),
              ),
              const Spacer(flex: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 79),
                    child: Text(
                      'Welcome Back',
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
                'Login to your account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(137, 39, 117, 75),
                ),
              ),
              const Spacer(flex: 10),
              const MyTextField(
                icon: 'assets/icons/person.png',
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCheckBox(),
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(230, 39, 117, 75),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 4),
              Row(
                children: [
                  Image.asset(
                    'assets/images/left_leaf.png',
                    width: 45,
                  ),
                ],
              ),
              const Spacer(flex: 2),
              MyButton(onPressed: () {}, text: 'Login'),
              const Spacer(flex: 1),
              MyRow(
                text1: 'Don\'t have an account?',
                text2: 'Sign up',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              const Spacer(flex: 6),
            ],
          ),
        ),
      ),
    );
  }
}
