import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgets/mytext.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Hi, Jared!',
              fontSize: 20,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            MyText(
              text: '23 Jan, 2021',
              fontSize: 13,
              color: Color.fromARGB(172, 255, 255, 255),
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(57, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'lib/assets/images/notification.png',
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
