import 'package:flutter/material.dart';
import 'package:madiba_app/activities/All.books.dart';
import 'package:madiba_app/activities/classes.dart';
import 'package:madiba_app/activities/dashboard.dart';

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

  List<Widget> pages = [
    Dashboard(),
    Homescreen(),
    AllBookActivity(),
    Classes(),
    MyBooks(),
    Profile()
  ];
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

    pages = [homescreen, allBookActivity, events, myBooks, profile];

    currentPage = homescreen;
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homescreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 30.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currentTabIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTabIndex == 0
                              ? Colors.blueGrey
                              : Colors.grey,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                              color: currentTabIndex == 0
                                  ? Colors.blueGrey
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = AllBookActivity();
                        currentTabIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book_online,
                          color: currentTabIndex == 1
                              ? Colors.blueGrey
                              : Colors.grey,
                        ),
                        Text(
                          'Books',
                          style: TextStyle(
                              color: currentTabIndex == 1
                                  ? Colors.blueGrey
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Homescreen();
                        currentTabIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTabIndex == 0
                              ? Colors.blueGrey
                              : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTabIndex == 0
                                  ? Colors.blueGrey
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = AllBookActivity();
                        currentTabIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book_online,
                          color: currentTabIndex == 1
                              ? Colors.blueGrey
                              : Colors.grey,
                        ),
                        Text(
                          'Books',
                          style: TextStyle(
                              color: currentTabIndex == 1
                                  ? Colors.blueGrey
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
