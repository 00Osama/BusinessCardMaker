import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgets/mycontainer.dart';
import 'package:mentalhealthapp/widgets/myrow.dart';
import 'package:mentalhealthapp/widgets/mysearchbar.dart';
import 'package:mentalhealthapp/widgets/mytext.dart';
import 'package:mentalhealthapp/widgets/mytile.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff267ebd),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: MyRow(),
            ),
            const SizedBox(height: 40),
            const MySearchBar(),
            const SizedBox(height: 22),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 150),
                        child: Container(
                          height: 9,
                          decoration: BoxDecoration(
                            color: const Color(0xffc7daf8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: 'Category',
                            fontSize: 16,
                            color: Color(0xff383e59),
                          ),
                          MyText(
                            text: '.. ',
                            fontSize: 28,
                            color: Color(0xff383e59),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Column(
                      children: [
                        Row(
                          children: [
                            MyContainer(
                              text: 'Relationship',
                              image: 'lib/assets/images/colorful1.jpg',
                              leftPadding: 10,
                              rightPadding: 0,
                            ),
                            SizedBox(width: 10),
                            MyContainer(
                              text: 'Career',
                              image: 'lib/assets/images/colorful2.jpg',
                              leftPadding: 0,
                              rightPadding: 10,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            MyContainer(
                              text: 'Education',
                              image: 'lib/assets/images/colorful3.jpg',
                              leftPadding: 10,
                              rightPadding: 0,
                            ),
                            SizedBox(width: 10),
                            MyContainer(
                              text: 'Other',
                              image: 'lib/assets/images/colorful4.jpg',
                              leftPadding: 0,
                              rightPadding: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: 'Consultant',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          MyText(
                            text: '.. ',
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Expanded(
                      child: ListView(
                        children: const [
                          SizedBox(height: 3),
                          MyTile(
                            image: 'lib/assets/avatars/avatar1.jpg',
                            color: Color.fromARGB(255, 211, 34, 34),
                            title: 'Bobby Singer',
                            subTitle: 'Education',
                            padding: 0,
                            circularBorderRaduis: 13,
                          ),
                          SizedBox(height: 19),
                          MyTile(
                            image: 'lib/assets/avatars/avatar2.jpg',
                            color: Color.fromARGB(255, 211, 34, 34),
                            title: 'Dean Winchester',
                            subTitle: 'Other',
                            padding: 0,
                            circularBorderRaduis: 13,
                          ),
                          SizedBox(height: 19),
                          MyTile(
                            image: 'lib/assets/avatars/avatar3.jpg',
                            color: Color.fromARGB(255, 211, 34, 34),
                            title: 'Anthony Eric',
                            subTitle: 'Other',
                            padding: 0,
                            circularBorderRaduis: 13,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
