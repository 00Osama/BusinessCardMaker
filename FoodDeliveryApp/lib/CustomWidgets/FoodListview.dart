import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/FoodItem.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';
import 'package:fooddeliveryapp/screens/SubScreens/DetailsScreen.dart';

// ignore: must_be_immutable
class FoodListView extends StatelessWidget {
  FoodListView({
    super.key,
    required this.model,
    required this.numberOfCards,
  });

  List<FoodModel> model;
  String numberOfCards;
  late int itemCount;

  @override
  Widget build(BuildContext context) {
    if (numberOfCards == 'Four') {
      itemCount = 4;
    } else {
      itemCount = model.length;
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  foodModel: model[index],
                ),
              ),
            );
          },
          child: Row(
            children: [
              const SizedBox(width: 15),
              FoodItem(
                foodModel: model[index],
                cardHeight: 270,
                cardWidth: 200,
                imageSize: 150,
                nameSize: 20,
                priceSize: 14,
                padding: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
