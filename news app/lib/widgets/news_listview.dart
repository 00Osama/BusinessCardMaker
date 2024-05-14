import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsModel.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.model});
  final List<NewsModel> model;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) {
        return NewsTile(
          news: model[index],
        );
      },
    );
  }
}
