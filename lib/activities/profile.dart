import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.w900),
              ),
            ),
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
                          image: AssetImage("images/book1.jpg"),
                          fit: BoxFit.cover)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Rigo Effector Ninja",
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
                    Text("Individual"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent),
                          borderRadius: BorderRadius.circular(10.0)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
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
                      leading: Icon(Icons.card_membership),
                      title: Text('Kigali City'),
                      subtitle: Text('Address'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(Icons.card_membership),
                      title: Text('Individual'),
                      subtitle: Text('Membership Category'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(Icons.supervised_user_circle),
                      title: Text('Password'),
                      subtitle: Text('Change Password'),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text('Settings'),
                      subtitle: Text('Change Languages'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
