import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/MainScreens/HomeScreen.dart';
import 'package:fooddeliveryapp/screens/MainScreens/LikesScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyGnav extends StatefulWidget {
  const MyGnav({super.key});

  @override
  State<MyGnav> createState() => _MyGnavState();
}

class _MyGnavState extends State<MyGnav> {
  int _selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    const LikesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: myScreens.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 13),
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          backgroundColor: Colors.grey.shade300,
          color: Colors.grey[400],
          activeColor: Colors.grey[800],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 20,
          padding: const EdgeInsets.all(15),
          tabs: [
            GButton(
              icon: Icons.home_rounded,
              text: ' Home',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.favorite_border_rounded,
              text: ' Likes',
              onPressed: () {},
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
