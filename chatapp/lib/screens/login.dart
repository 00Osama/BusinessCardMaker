import 'package:chatapp/screens/chat.dart';
import 'package:chatapp/screens/signup.dart';
import 'package:chatapp/widgets/email_textfield.dart';
import 'package:chatapp/widgets/message.dart';
import 'package:chatapp/widgets/my_button.dart';
import 'package:chatapp/widgets/signin_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget buttonChild = const Text('Sign In');
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValidEmail(String email) {
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(emailRegex);
    if (regExp.hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }

  void showSuccessfulMessage() {
    Navigator.push(
      context,
      DialogRoute(
        context: context,
        builder: (context) {
          return Message(
            text: 'Successfully Registered, You can login now',
            onTap: () {},
          );
        },
      ),
    );
  }

  void chatPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const ChatPage();
        },
      ),
    );
  }

  String? emailErrorText;
  String? passwordErrorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 60),
              Image.asset(
                'lib/images/chat.png',
                width: 200,
                height: 200,
              ),
              const Center(
                child: Text(
                  'Chatter Hub',
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
                      'Login',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              EmailTextField(
                emailController: emailController,
                errorText: emailErrorText,
              ),
              const SizedBox(height: 10),
              SignInPassword(
                passwordController: passwordController,
                errorText: passwordErrorText,
              ),
              const SizedBox(height: 30),
              MyButton(
                child: buttonChild,
                onTap: () async {
                  setState(() {
                    buttonChild = const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  });
                  if (isValidEmail(emailController.text)) {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      chatPage();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        setState(() {
                          emailErrorText = 'No user found for that email';
                          passwordErrorText = null;
                          buttonChild = const Text('Sign in');
                        });
                      } else if (e.code == 'wrong-password') {
                        setState(() {
                          emailErrorText = null;
                          passwordErrorText = 'wrong password';
                          buttonChild = const Text('Sign in');
                        });
                      }
                    }
                  } else {
                    setState(() {
                      emailErrorText = 'invalid email address';
                      buttonChild = const Text('Sign in');
                    });
                  }
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('new member? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const SignUp();
                        },
                      ));
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 125, 204),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
