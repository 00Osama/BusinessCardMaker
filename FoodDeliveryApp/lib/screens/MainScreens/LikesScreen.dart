import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/FoodItem.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});
  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Foods You May Buy In The future',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 110, 124, 148),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    2, // This specifies the number of items in a row.
                childAspectRatio: (155 /
                    225), // Adjust the size ratio of the item based on your design.
                crossAxisSpacing:
                    4, // Adjust the spacing between items horizontally.
                mainAxisSpacing:
                    10, // Adjust the spacing between items vertically.
              ),
              itemCount: likesfoodModel.length,
              itemBuilder: (context, index) {
                return FoodItem(
                  foodModel: likesfoodModel[index],
                  cardHeight:
                      225, // You might need to adjust this based on your grid's configuration.
                  cardWidth: 155, // Or adjust accordingly if needed.
                  imageSize: 100,
                  nameSize: 19,
                  priceSize: 13,
                  padding: 3,
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
