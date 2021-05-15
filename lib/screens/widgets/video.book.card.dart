import 'package:flutter/material.dart';

class VideoBookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String author;

  VideoBookCard(this.imageUrl, this.title, this.price, this.author);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20.0,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.fill),
              ),
            )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    title,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ));
  }
}
