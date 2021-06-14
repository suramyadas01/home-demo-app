import 'package:home_app/secrets.dart';
import 'package:flutter/material.dart';
import 'package:home_app/models/article_model.dart';
import 'package:home_app/services/news.dart';
import 'package:home_app/components/news_screen_components/news_body_tile.dart';
//import 'package:home_app/components/news_screen_components/top_search_bar.dart';
//import 'package:home_app/components/news_screen_components/news_category_tile.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<String> categories = [
    'Tech',
    'Business',
    'US',
    'Crypto',
    'Politics',
    'UK',
    'Game Dev',
    'Elon Musk',
    'Godot'
  ];

  List<ArticleModel> articles = new List<ArticleModel>();

  bool _loading = true;

  void getNews() async {
    String searchUrl =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$kApiKey';
    News newsClass = News(providedUrl: searchUrl);
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(
                      Colors.greenAccent.shade700),
                ),
              ),
            )
          : Column(
              children: [
                //TopSearchBar(),
                //NewsCategoryList(categories: categories),
                NewsBodyList(articles: articles),
              ],
            ),
    );
  }
}
