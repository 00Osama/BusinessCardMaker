import 'package:flutter/material.dart';

class PopScreen extends StatelessWidget {
  const PopScreen({super.key, required this.myColor});

  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 280),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: myColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back_rounded,
            size: 27,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
