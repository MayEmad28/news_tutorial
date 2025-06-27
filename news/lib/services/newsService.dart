import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news/models/NewsModel.dart';

class Newsservice {
  final Dio dio = Dio();

  Future<List<Newsmodel>> getNews({required String Category}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=d632a8a3bd604e8bbb4ef7a413ec854d&category=$Category");

      var jsonData = response.data;
      var articles = jsonData['articles'];

      List<Newsmodel> articlesList = [];

      for (var article in articles) {
        Newsmodel news = Newsmodel.fromJson(article);
        articlesList.add(news);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
