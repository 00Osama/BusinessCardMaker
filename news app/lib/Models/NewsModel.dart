class NewsModel {
  final String? image;
  final String title;
  final String? description;
  final String url;

  NewsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });

  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
    );
  }
}
