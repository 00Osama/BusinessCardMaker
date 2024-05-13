import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.foodModel,
  }) : super(key: key);

  final FoodModel foodModel;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late String img = 'assets/icons/red_heart_1.png';
  late String text = 'Add to Cart';
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < likesfoodModel.length; i++) {
      if (widget.foodModel.name == likesfoodModel[i].name) {
        img = 'assets/icons/red_heart_2.png';
        break;
      }
    }
    for (int i = 0; i < cartfoodModel.length; i++) {
      if (widget.foodModel.name == cartfoodModel[i].name) {
        text = 'Remove From Cart';
        break;
      }
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (img == 'assets/icons/red_heart_1.png') {
                          img = 'assets/icons/red_heart_2.png';
                          likesfoodModel.add(widget.foodModel);
                        } else {
                          img = 'assets/icons/red_heart_1.png';
                          likesfoodModel.remove(widget.foodModel);
                        }
                      });
                    },
                    child: Image.asset(
                      img,
                      width: 21,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 150,
              height: 150,
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
            const SizedBox(height: 20),
            Text(
              widget.foodModel.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${widget.foodModel.price} \$',
              style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 239, 48, 41),
              ),
            ),
            const SizedBox(height: 110),
            const Padding(
              padding: EdgeInsets.only(right: 190),
              child: Text(
                'Delivery Info',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 300,
                child: Text(
                  'Delivered between Monday Aug and Thursday 20 from 8pm to 9:13: pm',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 16,
                    color: Color.fromARGB(255, 143, 142, 142),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(right: 188),
              child: Text(
                'Return Policy',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38),
              child: Text(
                'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 16,
                  color: Color.fromARGB(255, 143, 142, 142),
                ),
              ),
            ),
            const SizedBox(height: 110),
            SizedBox(
              width: 320,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (text == 'Add to Cart') {
                      cartfoodModel.add(widget.foodModel);
                      text = 'Remove From Cart';
                    } else {
                      cartfoodModel.remove(widget.foodModel);
                      text = 'Add to Cart';
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 239, 48, 41),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
