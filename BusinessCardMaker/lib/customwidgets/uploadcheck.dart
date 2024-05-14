import 'package:flutter/material.dart';

class UploadCheck extends StatelessWidget {
  const UploadCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Image Uploaded '),
        Icon(
          Icons.check_circle,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 23,
        ),
      ],
    );
  }
}
