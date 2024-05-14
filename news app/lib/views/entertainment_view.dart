import 'package:flutter/material.dart';
import 'package:newsapp/views/news_view.dart';

class EntertainmentView extends StatelessWidget {
  const EntertainmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'Entertainment News',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const NewsView(
        category: 'entertainment',
      ),
    );
  }
}
