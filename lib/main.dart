import 'package:flutter/material.dart';
import 'package:home_app/screens/iot_screen.dart';
import 'package:home_app/screens/main_screen.dart';
import 'package:home_app/screens/news_screen.dart';
import 'package:home_app/screens/messages_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 1;

  List<Widget> pageList = <Widget>[
    NewsScreen(),
    MainScreen(),
    IotScreen(),
    MessagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('Home App'),
        ),
        body: pageList[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(
              () {
                pageIndex = value;
              },
            );
          },
          currentIndex: pageIndex,
          selectedItemColor: Colors.greenAccent.shade700,
          unselectedItemColor: Colors.grey.shade100,
          backgroundColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Main',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome),
              label: 'IoT Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
          ],
        ),
      ),
    );
  }
}
