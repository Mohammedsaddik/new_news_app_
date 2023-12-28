import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsSwrvice {
  final Dio dio;

  NewsSwrvice(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    Response responce = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=682e5df7358b456992d2c2dc662e4618&category=$category');
    Map<String, dynamic> jsonData = responce.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticalModel> articleList = [];
    for (var article in articles) {
      ArticalModel articalModel = ArticalModel.fromJson(article);
      articleList.add(articalModel);
    }
    return articleList;
  }
}
