import 'package:dio/dio.dart';
import 'package:newsss_appp/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>>  getNews() async {
    Response response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_8709779c5a6612d9c1fcfcfe25844a3857914&q=sports&country=eg');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];
    List<ArticleModel> articleslist = [];
    for (var result in results) {
      ArticleModel articleModel = ArticleModel(
        image: result['image_url'],
        titel: result['title'],
      );
      articleslist.add(articleModel);
    }
    return articleslist;
  }
}
