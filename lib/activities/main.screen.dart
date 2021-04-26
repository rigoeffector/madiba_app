import 'package:flutter/material.dart';
import 'package:madiba_app/activities/All.books.dart';
import 'package:madiba_app/activities/classes.dart';

import 'package:madiba_app/activities/events.dart';
import 'package:madiba_app/activities/my.books.dart';
import 'package:madiba_app/activities/profile.dart';
import '../screens/home.screen.dart';

class Mainscreen extends StatefulWidget {
  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  Homescreen homescreen;
  Profile profile;
  Events events;
  AllBookActivity allBookActivity;
  Classes classes;
  MyBooks myBooks;

  @override
  void initState() {
    super.initState();
    homescreen = Homescreen();
    profile = Profile();
    events = Events();
    allBookActivity = AllBookActivity();
    myBooks = MyBooks();
    classes = Classes();

    pages = [homescreen, allBookActivity, events, myBooks, classes, profile];

    currentPage = homescreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          setState(() {
            currentTabIndex = i;
            currentPage = pages[i];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.book_sharp), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.event_available), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_label), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_sharp), label: ''),
        ],
      ),
      body: currentPage,
    );
  }
}
