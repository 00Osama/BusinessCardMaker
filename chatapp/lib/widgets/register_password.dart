import 'package:flutter/material.dart';

class RegiterPassword extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const RegiterPassword({
    Key? key,
    required this.passwordController,
    required this.confirmPasswordController,
  }) : super(key: key);

  @override
  RegiterPasswordState createState() => RegiterPasswordState();
}

class RegiterPasswordState extends State<RegiterPassword> {
  late String password;
  late String confirmPassword;
  String? errorText1;
  String? errorText2;

  @override
  void initState() {
    super.initState();
    password = widget.passwordController.text;
    confirmPassword = widget.confirmPasswordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                  if (password.length < 7) {
                    errorText1 = 'Passwords must be at least 7 characters';
                  } else {
                    errorText1 = null;
                  }
                });
              },
              controller: widget.passwordController,
              cursorColor: Colors.grey[800],
              decoration: InputDecoration(
                errorText: errorText1,
                hintText: 'Password',
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
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                  if (password != confirmPassword) {
                    errorText2 = 'Passwords do not match';
                  } else {
                    errorText2 = null;
                  }
                });
              },
              cursorColor: Colors.grey[800],
              controller: widget.confirmPasswordController,
              decoration: InputDecoration(
                errorText: errorText2,
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'Confirm Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
