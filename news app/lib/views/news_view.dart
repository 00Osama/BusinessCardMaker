import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsModel.dart';
import 'package:newsapp/services/news_api.dart';
import 'package:newsapp/widgets/news_listview.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key, required this.category});
  final String category;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  var future;
  @override
  void initState() {
    future = NewsApi().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(model: snapshot.data!);
        } else if (snapshot.hasError) {
          return const Text('oops there was an error, try again later');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
