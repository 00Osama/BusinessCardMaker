import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/MainScreens/LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 48, 41),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Image.asset(
                  'assets/images/startScreens/hat.png',
                  width: 90,
                ),
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.only(right: 162),
                child: Text(
                  'Food for',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Ubuntu',
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Everyone',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Ubuntu',
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Image.asset('assets/images/startScreens/cheese-burger.png'),
              const SizedBox(height: 45),
              SizedBox(
                width: 320,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 239, 48, 41),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
