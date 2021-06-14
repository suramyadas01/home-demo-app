import 'package:flutter/material.dart';
import 'body_tile.dart';
import 'package:home_app/models/article_model.dart';

class NewsBodyList extends StatelessWidget {
  const NewsBodyList({
    Key key,
    @required this.articles,
  }) : super(key: key);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return NewsBodyTile(
              imageUrl: articles[index].urlToImage,
              title: articles[index].title,
              description: articles[index].description,
              url: articles[index].url);
        },
      ),
    );
  }
}
