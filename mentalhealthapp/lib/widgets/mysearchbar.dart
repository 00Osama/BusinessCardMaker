import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgets/mytext.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(57, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/assets/images/search.png',
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            const MyText(
              text: 'Search',
              fontSize: 13,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
