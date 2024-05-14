import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField(
      {required this.isNumbersOnly,
      required this.icon,
      required this.hintText,
      required this.textcontroller,
      super.key});

  bool isNumbersOnly;
  final String hintText;
  final IconData icon;
  TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextInputType? inputType;
    if (isNumbersOnly == true) {
      inputType = TextInputType.number;
    } else {
      inputType = TextInputType.text;
    }
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        keyboardType: inputType,
        controller: textcontroller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black38,
          ),
          hintText: hintText,
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 210, 210, 210)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
