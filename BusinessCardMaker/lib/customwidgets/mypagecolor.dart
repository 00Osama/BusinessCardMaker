import 'package:flutter/material.dart';

class MyPageColor extends StatelessWidget {
  const MyPageColor({
    required this.color,
    Key? key, // Fixing super.key to Key? key
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );
  }
}
