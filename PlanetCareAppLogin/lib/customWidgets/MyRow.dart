import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});

  final String text1;
  final String text2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(137, 39, 117, 75),
          ),
        ),
        const SizedBox(width: 4),
        Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Text(
                text2,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(230, 39, 117, 75),
                ),
              ),
            ),
            const SizedBox(height: 1),
            Container(
              width: 45,
              height: 1,
              color: const Color.fromARGB(230, 39, 117, 75),
            ),
          ],
        ),
      ],
    );
  }
}
