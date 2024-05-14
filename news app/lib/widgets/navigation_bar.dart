import 'package:flutter/material.dart';
import 'package:newsapp/views/business_view.dart';
import 'package:newsapp/views/entertainment_view.dart';
import 'package:newsapp/views/general_view.dart';
import 'package:newsapp/views/health_view.dart';
import 'package:newsapp/views/sports_view.dart';

class BottomController extends StatefulWidget {
  const BottomController({key}) : super(key: key);

  @override
  State<BottomController> createState() => _BottomControllerState();
}

class _BottomControllerState extends State<BottomController> {
  int _selectedIndex = 2;
  final List<Widget> _screens = const [
    BusinessView(),
    EntertainmentView(),
    GeneralView(),
    HealthView(),
    SportsView()
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
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: BottomNavigationBar(
                  selectedFontSize: 13,
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  selectedLabelStyle: const TextStyle(fontFamily: 'Ubuntu'),
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  currentIndex: _selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      label: 'Business',
                      icon: Icon(Icons.business),
                    ),
                    BottomNavigationBarItem(
                      label: 'Entertainment',
                      icon: Icon(Icons.movie_rounded),
                    ),
                    BottomNavigationBarItem(
                      label: 'General',
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                      label: 'Health',
                      icon: Icon(Icons.local_hospital),
                    ),
                    BottomNavigationBarItem(
                      label: 'Sports',
                      icon: Icon(Icons.sports),
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
