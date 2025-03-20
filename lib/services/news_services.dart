import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d4efb648b438475fbc98cdfd523f1545&category=$category');
      
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      
      for (var article in articles) {
        String title = article['title'] ?? 'No title available';
        String subtitle = article['description'] ?? 'No description available';
        String? image = article['urlToImage']; // لا مشكلة إذا كان null

        ArticleModel articleModel = ArticleModel(
          image: image,
          title: title,
          subtitle: subtitle,
        );
        articlesList.add(articleModel);
      }
      
      return articlesList;
    } catch (e) {
 return [];
    }
  }
}
