import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.hideChars,
  });

  final String icon;
  final String hintText;
  final bool hideChars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffe8f1ec),
        ),
        child: TextField(
          obscureText: hideChars,
          style: const TextStyle(
            color: Color(0xff27754b),
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color.fromARGB(218, 39, 117, 75),
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(13),
              child: Image.asset(
                icon,
                width: 10,
                color: const Color(0xff27754b),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }
}
