import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Article extends StatefulWidget {
  final String imageUrl;
  Article({this.imageUrl});

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home App'),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.imageUrl,
          onWebViewCreated: (WebViewController webviewController) {
            _completer.complete(webviewController);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.close,
          color: Colors.grey.shade100,
          size: 28,
        ),
        backgroundColor: Colors.greenAccent.shade700,
      ),
    );
  }
}
