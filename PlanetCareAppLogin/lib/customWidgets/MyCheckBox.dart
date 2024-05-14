import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (newValue) {
            setState(() {
              _isChecked = newValue as bool;
            });
          },
          activeColor: const Color(0xff27754b),
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
        ),
        const Text(
          'Remember Me',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(230, 39, 117, 75),
          ),
        ),
      ],
    );
  }
}
