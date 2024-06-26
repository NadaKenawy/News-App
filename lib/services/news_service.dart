import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServiece {
  final Dio dio;

  NewsServiece({required this.dio});

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_473499e9246f5e6904bcabaf3a901d2d90e6a&language=ar&country=eg&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles =
          jsonData['results']; //as List<Map<String,dynamic>>;
      List<ArticlesModel> articlesList = [];
      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel(
            link : article['link'],
            image: article['image_url'],
            title: article['title'],
            description: article['description']);
        articlesList.add(articlesModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

}
