import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fooddeliveryapp/CustomWidgets/CartItem.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

// ignore: must_be_immutable
class CartListView extends StatefulWidget {
  CartListView({
    super.key,
    required this.model,
  });

  List<FoodModel> model;

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  late int total = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.model.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Slidable(
              endActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      setState(() {
                        widget.model.removeAt(index);
                      });
                    },
                    backgroundColor: const Color.fromARGB(166, 219, 13, 13),
                    icon: Icons.delete_rounded,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ],
              ),
              child: CartItem(
                model: cartfoodModel[index],
              ),
            ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
