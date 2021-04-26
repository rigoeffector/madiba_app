import 'package:flutter/material.dart';

class Frequentlytakenbookwidget extends StatefulWidget {
  final String id;
  final String title;
  final String reviewers;
  final String price;
  final String category;
  final String imagePath;
  final double ratings;
  Frequentlytakenbookwidget(this.id, this.imagePath, this.title, this.reviewers,
      this.price, this.category, this.ratings);

  @override
  _FrequentlytakenbookwidgetState createState() =>
      _FrequentlytakenbookwidgetState();
}

class _FrequentlytakenbookwidgetState extends State<Frequentlytakenbookwidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 440.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 440.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          widget.reviewers + " Reviews",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.price,
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      widget.category,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
