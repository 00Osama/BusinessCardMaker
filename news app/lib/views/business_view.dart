import 'package:flutter/material.dart';
import 'package:newsapp/views/news_view.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'Business News',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const NewsView(
        category: 'business',
      ),
    );
  }
}
