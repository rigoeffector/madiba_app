import 'package:flutter/material.dart';

import 'package:madiba_app/screens/widgets/all.familly.books.dart';
import 'package:madiba_app/screens/widgets/all.individual.books.dart';
import 'package:madiba_app/screens/widgets/all.public.books.dart';
import 'package:madiba_app/screens/widgets/search.all.books.dart';

class AllBookActivity extends StatefulWidget {
  @override
  _AllBookActivityState createState() => _AllBookActivityState();
}

class _AllBookActivityState extends State<AllBookActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        children: [
          SearchAllBookswidget(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Individual Books ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    "View More ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          AllIndivudualBookswidget(),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            height: 10.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Familly Books ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    "View More ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          AllFamilyBookswidget(),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            height: 10.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Public  Books ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    "View More ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          AllPublicBookswidget()
        ],
      ),
    );
  }
}
