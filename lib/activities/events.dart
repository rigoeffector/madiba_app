import 'package:flutter/material.dart';
// import 'package:madiba_app/screens/data/event.dart';
// import 'package:madiba_app/screens/models/event.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  // final List<EventPojo> _eventPojo = eventPojo;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: AssetImage("images/coming.png"), fit: BoxFit.cover),
      ),
      child: Container(child: Text('Event is under construction')),
    );
  }
}
