import 'package:chatapp/screens/login.dart';
import 'package:chatapp/widgets/email_textfield.dart';
import 'package:chatapp/widgets/message.dart';
import 'package:chatapp/widgets/my_button.dart';
import 'package:chatapp/widgets/register_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirmPassword = TextEditingController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void showSuccessfulMessage() {
    Navigator.push(
      context,
      DialogRoute(
        context: context,
        builder: (context) {
          return Message(
            text: 'Successfully Registered, You can login now',
            onTap: () {
              Navigator.of(context).pop();
              showLoginPage();
            },
          );
        },
      ),
    );
  }

  void showLoginPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LoginPage();
        },
      ),
    );
  }

  void showErrorMessage() {
    Navigator.push(
      context,
      DialogRoute(
        context: context,
        builder: (context) {
          return Message(
            text: 'there was an error, please try again',
            onTap: () {
              Navigator.of(context).pop();
            },
          );
        },
      ),
    );
  }

  String? emailErrorText;
  bool isValidEmail(String email) {
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(emailRegex);
    if (regExp.hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }

  Widget buttonChild = const Center(
    child: Text(
      'Register',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: ListView(
        children: [
          Image.asset(
            'lib/images/chat.png',
            width: 200,
            height: 200,
          ),
          const Center(
            child: Text(
              'Chatter Hub New Member',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 55),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          EmailTextField(
            emailController: email,
            errorText: emailErrorText,
          ),
          const SizedBox(height: 10),
          RegiterPassword(
            passwordController: password,
            confirmPasswordController: confirmPassword,
          ),
          const SizedBox(height: 20),
          MyButton(
            child: buttonChild,
            onTap: () async {
              if (isValidEmail(email.text) &&
                  (password.text == confirmPassword.text) &&
                  (password.text.length >= 7)) {
                setState(() {
                  buttonChild =
                      const CircularProgressIndicator(color: Colors.black);
                });
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  showSuccessfulMessage();
                  setState(() {
                    buttonChild = const Text(
                      'Register',
                    );
                  });
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'email-already-in-use') {
                    setState(() {
                      emailErrorText = 'The account already exists';
                      buttonChild = const Text(
                        'Register',
                      );
                    });
                  }
                } catch (e) {
                  showErrorMessage();
                }
              }
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('already have an account? '),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 29, 125, 204),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
