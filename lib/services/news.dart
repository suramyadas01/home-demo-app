import 'dart:convert';
import 'package:home_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  String providedUrl;

  News({this.providedUrl});

  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url = providedUrl;

    var response = await http.get(url);
    var jsonData;

    if (response.statusCode == 200) {
      print("Got em!");
      jsonData = jsonDecode(response.body);
    } else
      print(response.statusCode);
    try {
      if (jsonData['status'] == 'ok') {
        jsonData['articles'].forEach(
          (element) {
            if (element['urlToImage'] != null &&
                element['description'] != null) {
              ArticleModel articleModel = ArticleModel(
                title: element['title'],
                author: element['author'],
                urlToImage: element['urlToImage'],
                url: element['url'],
                content: element['content'],
                description: element['description'],
              );
              news.add(articleModel);
            }
          },
        );
      }
      print(news.length);
    } catch (e) {
      print('Haha send help');
    }
  }
}
