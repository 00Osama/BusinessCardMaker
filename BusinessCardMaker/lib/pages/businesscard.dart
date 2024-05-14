import 'package:businesscardmaker/customwidgets/mypagecolor.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CardPage extends StatefulWidget {
  const CardPage(
      {required this.image,
      required this.fullname,
      required this.jobtitle,
      required this.phonenumber,
      required this.email,
      super.key});

  final XFile? image;
  final String fullname;
  final String jobtitle;
  final String phonenumber;
  final String email;

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  Color mycolor = const Color(0xff79797B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff36311E),
      body: Center(
        child: Container(
          color: mycolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 115.0,
                child: CircleAvatar(
                  backgroundImage: widget.image != null
                      ? FileImage(File(widget.image!.path)) as ImageProvider
                      : const AssetImage('images/default.jpg'),
                  radius: 110.0,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                widget.fullname,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Opacity(
                opacity: 0.5,
                child: Text(
                  widget.jobtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: Opacity(
                  opacity: 0.5,
                  child: Divider(
                    thickness: 2,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 17,
                      ),
                      const Icon(
                        Icons.phone,
                        size: 33,
                        color: Color(0xFF36311F),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.phonenumber,
                        style: const TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Ubuntu',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 17,
                      ),
                      const Icon(
                        Icons.email_rounded,
                        size: 33,
                        color: Color(0xFF36311F),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.email,
                        style: const TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Ubuntu',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mycolor = const Color(0xff483C32);
                        });
                      },
                      child: const MyPageColor(color: Color(0xff483C32)),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mycolor = const Color(0xffB8860B);
                        });
                      },
                      child: const MyPageColor(color: Color(0xffB8860B)),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mycolor = const Color(0xff191970);
                        });
                      },
                      child: const MyPageColor(color: Color(0xff191970)),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mycolor = const Color(0xff696969);
                        });
                      },
                      child: const MyPageColor(color: Color(0xff696969)),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mycolor = const Color(0xff228B22);
                        });
                      },
                      child: const MyPageColor(color: Color(0xff228B22)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
