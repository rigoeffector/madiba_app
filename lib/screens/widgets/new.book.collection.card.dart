import 'package:flutter/material.dart';

class Newbookcollectioncard extends StatelessWidget {
  //  dynamic data from backend
  //  created by rigoeffector

  final String title;
  final String author;
  final String imagePath;
  final int numberOfItems;

  Newbookcollectioncard(
      this.title, this.author, this.imagePath, this.numberOfItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      child: Card(
        elevation: 3.0,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(height: 30.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      author,
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "$numberOfItems Books",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.orangeAccent),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
