import 'package:flutter/material.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 300,
            height: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                hintText: 'Search News',
                hintStyle: TextStyle(
                  color: Colors.grey.shade100,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: FlatButton(
              onPressed: null,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey.shade100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
