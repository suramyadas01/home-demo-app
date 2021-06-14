import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title;

  HeaderText({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
