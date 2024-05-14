import 'package:flutter/material.dart';

class BottomController extends StatefulWidget {
  const BottomController({key}) : super(key: key);

  @override
  State<BottomController> createState() => _BottomControllerState();
}

class _BottomControllerState extends State<BottomController> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens.elementAt(_selectedIndex),
          Align(
            alignment: const Alignment(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: const Color.fromARGB(214, 0, 0, 0),
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  currentIndex: _selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Profile',
                      icon: Icon(
                        Icons.person,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
