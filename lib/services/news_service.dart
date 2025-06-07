import 'package:dio/dio.dart';
import 'package:newsss_appp/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_8709779c5a6612d9c1fcfcfe25844a3857914&q=$category&country=eg');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> results = jsonData['results'];
      List<ArticleModel> articallist = [];
      for (var result in results) {
        ArticleModel articleModel = ArticleModel.fromjson(result);
        articallist.add(articleModel);
      }
      return articallist;
    } catch (e) {
      return [];
    }
  }
}
