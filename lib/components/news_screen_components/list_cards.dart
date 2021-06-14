import 'package:flutter/material.dart';

class ListCards extends StatefulWidget {
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
  List<String> categories = [
    'Tech',
    'Business',
    'US',
    'Crypto',
    'Politics',
    'UK'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTile(categoryName: categories[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final categoryName;

  CategoryTile({this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 60.0,
      color: Colors.blue,
      child: categoryName,
    );
  }
}
