import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:madiba_app/activities/main.screen.dart';
import 'package:madiba_app/activities/signIn.dart';

class SignUp extends StatefulWidget {
  SignUpState createState() => SignUpState();
}

class SignUpState extends State {
  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final comfirmPasswordController = TextEditingController();
  final namesController = TextEditingController();

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL
    const url = 'http://library.sokoyenu.com/api/login';

    // Store all data with Param Name.
    //
    Map<String, String> headers = {"Content-type": "application/json"};

    var data = {'email': email.toString(), 'password': password.toString()};
    // check the status code for the result

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(data));
    int statusCode = response.statusCode;
    // Getting Server response into variable.
    // var message = jsonDecode(response.body);
    print(statusCode);
    // If the Response Message is Matched.
    if (statusCode == 200) {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Mainscreen()));
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Invalid Email or password'),
            actions: <Widget>[
              TextButton(
                  child:
                      Text("ok".toUpperCase(), style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
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
                height: 200.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("images/register.png"),
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
                    "Register",
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
                  controller: namesController,
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
                    labelText: 'Names',
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 8.0),
                    width: MediaQuery.of(context).size.width / 2.5,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 10.0, left: 10.0, right: 10.0),
                        labelText: 'Password',
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    margin: EdgeInsets.only(right: 10.0),
                    child: TextFormField(
                      controller: comfirmPasswordController,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 10.0, left: 10.0, right: 10.0),
                        labelText: 'Confirm Password',
                      ),
                    )),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
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
                    labelText: 'Phone',
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 20.0, left: 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: addressController,
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
                    labelText: 'Address',
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    right: 20.0, left: 20.0, bottom: 10.0, top: 20.0),
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
                    labelText: 'Membership',
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20.0),
              height: 50.0,
              child: TextButton(
                  child: Text("sign up".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
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
                  onPressed: userLogin),
            ),
            SizedBox(
              height: 10.0,
            ),
            Visibility(
                visible: visible,
                child: Center(
                  child: Column(
                    children: [
                      Text('Loading......'),
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
                    "Have an account?",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginUser()));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
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
