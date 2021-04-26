import 'package:flutter/material.dart';
import 'package:madiba_app/activities/all.book.detail.dart';
import 'package:madiba_app/screens/widgets/freq.taken.books.dart';

import 'package:madiba_app/screens/widgets/home.top.info.dart';
import 'package:madiba_app/screens/widgets/new.book.collection.dart';
import 'package:madiba_app/screens/widgets/search.book.dart';

import './data/freq.taken.book.dart';
import './models/freq.take.book.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Frequenttakenbook> _frequenttakenbook = frequenttakenbooks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        children: <Widget>[
          Hometopinfowidget(),
          Newbookcollectionwidget(),
          Searchbookwidget(),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Frequently Taken Books",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueGrey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AllBookDetail()));
              },
              child: Column(
                children:
                    _frequenttakenbook.map(_buildTakenBookDivision).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildTakenBookDivision(Frequenttakenbook frequenttakenbook) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: Frequentlytakenbookwidget(
        frequenttakenbook.id,
        frequenttakenbook.imagePath,
        frequenttakenbook.title,
        frequenttakenbook.reviewers,
        frequenttakenbook.price,
        frequenttakenbook.category,
        frequenttakenbook.ratings),
  );
}
