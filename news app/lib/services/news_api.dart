import 'package:dio/dio.dart';
import 'package:newsapp/Models/NewsModel.dart';

class NewsApi {
  final dio = Dio();

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=600a0750942a46ad8ed6e8ba2f5d96a9&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> jsonArticles = jsonData['articles'];
      List<NewsModel> newsData = [];

      for (var article in jsonArticles) {
        NewsModel news = NewsModel.fromJson(article);
        newsData.add(news);
      }
      return newsData;
    } catch (e) {
      return [];
    }
  }
}
