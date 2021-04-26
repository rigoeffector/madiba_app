import 'package:flutter/material.dart';

import 'package:madiba_app/screens/data/event.dart';

import 'package:madiba_app/screens/models/event.dart';

import 'package:madiba_app/screens/widgets/event.card.dart';

class Eventswidget extends StatelessWidget {
  //  all new book collection data
  final List<EventPojo> _eventPojo = eventPojo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _eventPojo.map(_buildEventDivision).toList(),
      ),
    );
  }
}

Widget _buildEventDivision(EventPojo eventPojo) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: EventCard(
        eventPojo.name,
        eventPojo.description,
        eventPojo.imagepath,
        eventPojo.venue,
        eventPojo.price,
        eventPojo.category,
        eventPojo.period,
        eventPojo.startdate,
        eventPojo.endDate,
        eventPojo.allowedSeat),
  );
}
