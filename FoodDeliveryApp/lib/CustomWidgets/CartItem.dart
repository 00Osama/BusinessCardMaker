import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.model});

  final FoodModel model;

  @override
  State<CartItem> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(10, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 75,
                height: 75,
                child: ClipOval(
                  child: Image.asset(
                    widget.model.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 115,
                    child: Text(
                      widget.model.name,
                      style: const TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 17,
                        color: Color.fromARGB(255, 24, 11, 11),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: 100,
                    child: Text(
                      '${widget.model.price} \$',
                      style: const TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 17,
                        color: Color.fromARGB(255, 239, 48, 41),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7, bottom: 10),
                    child: Container(
                      height: 25,
                      width: 72,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 48, 41),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (widget.model.amount > 0) {
                                  widget.model.amount -= 1;
                                }
                              });
                            },
                            child: Image.asset(
                              'assets/icons/minus.png',
                              width: 19,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            widget.model.amount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.model.amount += 1;
                              });
                            },
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 19,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
