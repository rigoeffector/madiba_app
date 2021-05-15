import 'package:flutter/material.dart';
// import 'package:madiba_app/activities/dashboard.dart';
import 'package:madiba_app/activities/main.activity.dart';
// import 'package:madiba_app/activities/main.activity.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Madiba App",
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Colors.blueGrey,
      ),
      home: HomePageActivity(),
    );
  }
}
