import 'package:flutter/material.dart';
import 'category_tile.dart';

class NewsCategoryList extends StatelessWidget {
  const NewsCategoryList({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView.builder(
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryTile(categoryName: categories[index]);
        },
      ),
    );
  }
}
