import 'package:flutter/material.dart';

class Hometopinfowidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'New Book',
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              'Collections',
              style: TextStyle(fontSize: 29.0, color: Colors.blueGrey),
            )
          ],
        ),
        Icon(
          Icons.notifications_none,
          color: Colors.blueGrey,
          size: 30.0,
        ),
      ],
    );
  }
}
