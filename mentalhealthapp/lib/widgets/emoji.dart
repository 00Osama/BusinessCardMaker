import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji({
    super.key,
    required this.emoji,
    required this.mood,
  });

  final String emoji;
  final String mood;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(57, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              emoji,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          mood,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontFamily: 'Ubuntu',
          ),
        )
      ],
    );
  }
}
