import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/CartListView.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';
import 'package:fooddeliveryapp/screens/SubScreens/PaymentScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icons/back-icon.png',
                      width: 22,
                    ),
                  ),
                ),
                const SizedBox(width: 103),
                const Text(
                  'Cart Items',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 110, 124, 148),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/flick-to-left.png',
                  width: 18,
                ),
                const SizedBox(width: 10),
                const Text('Swipe The Item To Delete'),
              ],
            ),
            SizedBox(
              height: 685,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Expanded(
                    child: CartListView(
                      model: cartfoodModel,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: SizedBox(
                      width: 330,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 239, 48, 41),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Complete Order',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
