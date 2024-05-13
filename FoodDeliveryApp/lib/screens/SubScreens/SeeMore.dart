import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/CustomWidgets/FoodCategory.dart';
import 'package:fooddeliveryapp/CustomWidgets/FoodListview.dart';
import 'package:fooddeliveryapp/CustomWidgets/MyDivider.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
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
              const SizedBox(width: 75),
              const Text(
                'All Available Foods',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 110, 124, 148),
                ),
              )
            ],
          ),
          const SizedBox(height: 17),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: FoodsNonActive(),
          ),
          const SizedBox(height: 10),
          MyContainer(
            childWidget: SizedBox(
              height: 270,
              child: FoodListView(
                model: foodsModel,
                numberOfCards: 'all',
              ),
            ),
          ),
          const MyDivider(dividerHeight: 7, verticalSpace: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: DrinksNonActive(),
          ),
          const SizedBox(height: 10),
          MyContainer(
            childWidget: SizedBox(
              height: 270,
              child: FoodListView(
                model: drinksModel,
                numberOfCards: 'all',
              ),
            ),
          ),
          const SizedBox(height: 10),
          const MyDivider(dividerHeight: 7, verticalSpace: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: SnacksNonActive(),
          ),
          const SizedBox(height: 10),
          MyContainer(
            childWidget: SizedBox(
              height: 270,
              child: FoodListView(
                model: snacksModel,
                numberOfCards: 'all',
              ),
            ),
          ),
          const SizedBox(height: 10),
          const MyDivider(dividerHeight: 7, verticalSpace: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: DessertsNonActive(),
          ),
          const SizedBox(height: 10),
          MyContainer(
            childWidget: SizedBox(
              height: 270,
              child: FoodListView(
                model: dessertsModel,
                numberOfCards: 'all',
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    required this.childWidget,
    super.key,
  });

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 40,
            offset: const Offset(10, 10),
          ),
        ],
      ),
      child: childWidget,
    );
  }
}
