import 'package:flutter/material.dart';
import 'package:mentalhealthapp/widgets/emoji.dart';
import 'package:mentalhealthapp/widgets/myrow.dart';
import 'package:mentalhealthapp/widgets/mysearchbar.dart';
import 'package:mentalhealthapp/widgets/mytext.dart';
import 'package:mentalhealthapp/widgets/mytile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff267ebd),
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
            const Padding(
              padding: EdgeInsets.all(17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: 'How do you feel?',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  MyText(
                    text: '.. ',
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Emoji(emoji: '😔', mood: 'Badly'),
                Emoji(emoji: '😊', mood: 'Fine'),
                Emoji(emoji: '😁', mood: 'Well'),
                Emoji(emoji: '😃', mood: 'Excellent'),
              ],
            ),
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
                            text: 'exercises',
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
                    Expanded(
                      child: ListView(
                        children: const [
                          SizedBox(height: 3),
                          MyTile(
                            image: 'lib/assets/images/person.png',
                            color: Color(0xff2b81be),
                            imageColor: Colors.white,
                            title: 'Reading speed',
                            subTitle: '8 Exercises',
                            padding: 10,
                            circularBorderRaduis: 0,
                          ),
                          SizedBox(height: 19),
                          MyTile(
                            image: 'lib/assets/images/heart.png',
                            color: Color(0xfff88556),
                            imageColor: Colors.white,
                            title: 'Speaking skills',
                            subTitle: '16 Exercises',
                            padding: 10,
                            circularBorderRaduis: 0,
                          ),
                          SizedBox(height: 19),
                          MyTile(
                            image: 'lib/assets/images/listen.png',
                            color: Color(0xfffa5a7f),
                            imageColor: Colors.white,
                            title: 'listening skills',
                            subTitle: '10 Exercises',
                            padding: 10,
                            circularBorderRaduis: 0,
                          ),
                          SizedBox(height: 19),
                          MyTile(
                            image: 'lib/assets/images/writing.png',
                            color: Color.fromARGB(255, 191, 90, 250),
                            imageColor: Colors.white,
                            title: 'writing skills',
                            subTitle: '10 Exercises',
                            padding: 10,
                            circularBorderRaduis: 0,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
