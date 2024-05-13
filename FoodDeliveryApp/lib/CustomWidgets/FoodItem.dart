import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

class FoodItem extends StatefulWidget {
  const FoodItem(
      {super.key,
      required this.foodModel,
      required this.cardHeight,
      required this.cardWidth,
      required this.imageSize,
      required this.nameSize,
      required this.priceSize,
      required this.padding});

  final FoodModel foodModel;
  final double cardHeight;
  final double cardWidth;
  final double imageSize;
  final double nameSize;
  final double priceSize;
  final double padding;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: Container(
        height: widget.cardHeight,
        width: widget.cardWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 1,
              blurRadius: 40,
              offset: const Offset(10, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 13),
            Container(
              width: widget.imageSize,
              height: widget.imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 9,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  widget.foodModel.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 190,
              child: Text(
                widget.foodModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: widget.nameSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${widget.foodModel.price} \$',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: widget.priceSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 239, 48, 41),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
