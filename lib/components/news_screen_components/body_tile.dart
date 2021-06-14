import 'package:flutter/material.dart';
import 'package:home_app/components/news_screen_components/article.dart';
import 'package:clipboard/clipboard.dart';

class NewsBodyTile extends StatelessWidget {
  final String imageUrl, title, description, url;

  NewsBodyTile(
      {@required this.imageUrl,
      @required this.title,
      @required this.description,
      @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Article(
                      imageUrl: url,
                    )));
      },
      onLongPress: () async {
        await FlutterClipboard.copy(url);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.shade700.withOpacity(.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 7),
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(15.0, 12.0, 15.0, 8.0),
        width: 400.0,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.network(imageUrl)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 2,
              indent: 10,
              endIndent: 10,
              color: Colors.greenAccent.shade700.withOpacity(.7),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
              child: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}
