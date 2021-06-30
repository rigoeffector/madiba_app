import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:madiba_app/activities/signIn.dart';
import 'package:madiba_app/activities/signup.dart';
import 'package:http/http.dart' as http;
import 'package:madiba_app/constants/server.dart';
import 'package:madiba_app/screens/models/category.dart';

import 'package:madiba_app/screens/models/slider.item.dart';
import 'package:madiba_app/screens/widgets/slide.dot.dart';
import 'package:madiba_app/screens/widgets/slider.item.dart';

class HomePageActivity extends StatefulWidget {
  @override
  _HomePageActivityState createState() => _HomePageActivityState();
}

class _HomePageActivityState extends State<HomePageActivity> {
  var url = Url + "user/read.user.category.php";
  Future<UserCategory> fetchUserCategory() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return UserCategory.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load userCategory');
    }
  }

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Future<UserCategory> futerUserCategory;

  @override
  void initState() {
    super.initState();

    futerUserCategory = fetchUserCategory();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 4) {
        ++_currentPage;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(microseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        PageView.builder(
                          onPageChanged: _onPageChanged,
                          scrollDirection: Axis.horizontal,
                          itemCount: slideList.length,
                          itemBuilder: (ctx, i) => SlideItemWidget(i),
                          controller: _pageController,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == _currentPage)
                                      SlideDots(true)
                                    else
                                      SlideDots(false)
                                ],
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.lightBlue[900]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.lightBlue[50])))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Family',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.blueGrey),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.lightBlue[900]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.lightBlue[50])))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Private School',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: TextButton(
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.orangeAccent),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.lightBlue[900]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.lightBlue[900])))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Public School ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextButton(
                        style: ButtonStyle(
                            shadowColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue[300]),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightBlue[900]),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.lightBlue[50])))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Individual ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextButton(
                        style: ButtonStyle(
                            shadowColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue[900]),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightBlue[900]),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Community',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have a membership account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginUser()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
