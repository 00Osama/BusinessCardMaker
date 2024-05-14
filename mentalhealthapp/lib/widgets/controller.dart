import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mentalhealthapp/screens/categorys.dart';
import 'package:mentalhealthapp/screens/home.dart';

class MyGnav extends StatefulWidget {
  const MyGnav({super.key});

  @override
  State<MyGnav> createState() => _MyGnavState();
}

class _MyGnavState extends State<MyGnav> {
  int index = 0;
  List<Widget> screens = [
    const Home(),
    const Category(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(48, 158, 158, 158),
                  Color.fromARGB(48, 158, 158, 158),
                  Color.fromARGB(97, 158, 158, 158),
                  Color.fromARGB(48, 158, 158, 158),
                  Color.fromARGB(48, 158, 158, 158),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              padding: const EdgeInsets.all(20),
              color: Colors.grey[400],
              activeColor: Colors.grey[800],
              tabBackgroundColor: Colors.white,
              tabBorderRadius: 35,
              tabActiveBorder: Border.all(color: Colors.grey),
              onTabChange: (value) {
                setState(() {
                  index = value;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home_rounded,
                  text: ' Home',
                ),
                GButton(
                  icon: Icons.category_rounded,
                  text: ' Categorys',
                ),
                GButton(
                  icon: Icons.mail_rounded,
                  text: ' Mails',
                ),
                GButton(
                  icon: Icons.person_rounded,
                  text: ' Profile',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
