import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;

  CategoryTile({this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tapped $categoryName');
      },
      child: Container(
        margin: EdgeInsets.only(right: 4.0, bottom: 12.0),
        alignment: Alignment.center,
        height: 40.0,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
          child: Text(
            categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.greenAccent.shade700,
          boxShadow: [
            BoxShadow(
              color: Color(0x99172712),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
