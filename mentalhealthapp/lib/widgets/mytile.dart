import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgets/mytext.dart';

class MyTile extends StatelessWidget {
  const MyTile({
    super.key,
    required this.image,
    this.color,
    this.imageColor,
    required this.title,
    required this.subTitle,
    required this.padding,
    required this.circularBorderRaduis,
  });

  final String image;
  final Color? color;
  final Color? imageColor;
  final String title;
  final String subTitle;
  final double padding;
  final double circularBorderRaduis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(circularBorderRaduis),
                        child: Image.asset(
                          image,
                          color: imageColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: title,
                        fontSize: 16,
                        color: const Color(0xff343a54),
                      ),
                      const SizedBox(height: 6),
                      MyText(
                        text: subTitle,
                        fontSize: 13,
                        color: const Color(0xff9094a6),
                      ),
                    ],
                  )
                ],
              ),
              const Row(
                children: [
                  MyText(
                    text: '.. ',
                    fontSize: 28,
                    color: Color(0xff848fa8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
