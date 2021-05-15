import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:madiba_app/activities/dashboard.dart';

import 'package:madiba_app/activities/signup.dart';
import 'package:madiba_app/constants/server.dart';

class LoginUser extends StatefulWidget {
  LoginUserState createState() => LoginUserState();
}

class LoginUserState extends State<LoginUser> {
  bool visible = false;
  bool isButtonDisabled = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    setState(() {
      visible = true;
      isButtonDisabled = true;
    });
    String email = emailController.text;
    String password = passwordController.text;

    var url = Url + "login";

    Map<String, String> headers = {"Content-type": "application/json"};

    var data = {'email': email.toString(), 'password': password.toString()};

    var response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(data));
    int statusCode = response.statusCode;

    print(statusCode);

    if (statusCode == 200) {
      setState(() {
        visible = false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    } else {
      setState(() {
        visible = false;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(
              'Invalid Email or password',
              style: TextStyle(fontSize: 25.0, color: Colors.blueGrey),
            ),
            actions: <Widget>[
              TextButton(
                  child:
                      Text("ok".toUpperCase(), style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)))),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("images/login.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(),
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  controller: emailController,
                  autocorrect: true,
                  decoration: new InputDecoration(
                    fillColor: Colors.lightBlue[30],
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                    labelText: 'Email',
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: passwordController,
                  autocorrect: true,
                  obscureText: true,
                  decoration: new InputDecoration(
                    fillColor: Colors.lightBlue[30],
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                    labelText: 'Password',
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20.0),
              height: 50.0,
              child: TextButton(
                  child: Text("sign in".toUpperCase(),
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ))),
                  onPressed: !isButtonDisabled ? userLogin : null),
            ),
            SizedBox(
              height: 20.0,
            ),
            Visibility(
                visible: visible,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: CircularProgressIndicator()),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Need an account?",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
