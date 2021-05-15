import 'package:flutter/material.dart';

class KidsBookCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final String reviews;
  final String author;

  KidsBookCard(this.title, this.description, this.price, this.imageUrl,
      this.reviews, this.author);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(right: 10.0, left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 15.0,
            shadowColor: Colors.blueGrey,
            child: Container(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  offset: Offset(0, 4.0),
                                  color: Colors.black38)
                            ],
                            image: DecorationImage(
                                image: AssetImage(imageUrl),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.blueGrey),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            description,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                price,
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            height: 30.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orangeAccent),
                                borderRadius: BorderRadius.circular(10.0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
