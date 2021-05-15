import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // Creating String Var to Hold sent Email.
  final String email;

// Receiving Email using Constructor.
  Profile({Key key, this.email}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Notification', icon: Icons.notifications_active),
  const Choice(title: 'Search', icon: Icons.search),
];

class _ProfileState extends State<Profile> {
  final nameControler = TextEditingController();
  final ageController = TextEditingController();
  final passwordController = TextEditingController();

  // Choice _selectedChoice = choices[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 120.0,
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
                          image: AssetImage("images/miss.png"),
                          fit: BoxFit.cover)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Grace Ingabire',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("+250 784600111"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Familly"),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Account info",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.map_sharp,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      subtitle: Text('Kigali City'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.card_travel,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        'Membership Type',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      subtitle: Text('Familly'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    GestureDetector(
                      onTap: _showResetPssdlDialog,
                      child: ListTile(
                        leading: Icon(
                          Icons.lock_open,
                          color: Colors.blueGrey,
                        ),
                        title: Text(
                          'Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        subtitle: Text('Reset Password'),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.wallet_membership,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        'Membership Fees',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      subtitle: Text('10,000 Rwf'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.perm_identity_sharp,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        'Members',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      subtitle: Text('5'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showMaterialDialog,
        child: const Icon(Icons.person_add),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }

  // void _select(Choice choice) {
  //   setState(() {
  //     _selectedChoice = choice;
  //   });
  // }

  _showResetPssdlDialog() {
    showDialog(
        context: context,
        builder: (_) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                new AlertDialog(
                  title: new Text("Reset Password"),
                  content: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'email',
                            ),
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'Password',
                            ),
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'Confirm password',
                            ),
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Save Changes',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ))
                    ],
                  ),
                  // actions: <Widget>[],
                ),
              ],
            ));
  }

  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                new AlertDialog(
                  title: new Text("Add a child"),
                  content: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'Names',
                            ),
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'Password',
                            ),
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20.0),
                          child: TextField(
                            controller: nameControler,
                            autocorrect: true,
                            decoration: new InputDecoration(
                              fillColor: Colors.lightBlue[30],
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              labelText: 'Age',
                            ),
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.lightBlue[50]),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.lightBlue[50])))),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Save',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                  // actions: <Widget>[],
                ),
              ],
            ));
  }
}
