class ArticleModel {
  final String? image;
  final String title;
  ArticleModel({required this.image, required this.title});
  factory ArticleModel.fromjson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['image_url'],
      title: json['title'],
    );
  }
}
