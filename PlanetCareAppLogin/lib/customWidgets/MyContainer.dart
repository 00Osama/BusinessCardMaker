import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key, required this.image, required this.imagePadding});

  final String image;
  final double imagePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          )),
      child: Padding(
        padding: EdgeInsets.all(imagePadding),
        child: Image.asset(image),
      ),
    );
  }
}
