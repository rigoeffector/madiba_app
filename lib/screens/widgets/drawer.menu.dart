import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Languages'),
          trailing: Icon(Icons.settings),
        )
      ],
    );
  }
}
