import 'package:flutter/material.dart';

class Searchbookwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              border: InputBorder.none,
              hintText: "Search any book",
              suffixIcon: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ))),
        ),
      ),
    );
  }
}
