import 'package:flutter/material.dart';
import 'package:madiba_app/activities/main.screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Madiba App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Mainscreen(),
    );
  }
}
