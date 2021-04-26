import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String name;
  final String description;
  final String imagepath;
  final String venue;
  final String category;
  final String price;
  final String period;
  final String startdate;
  final String endDate;
  final String allowedSeat;
  EventCard(
      this.name,
      this.description,
      this.imagepath,
      this.venue,
      this.category,
      this.price,
      this.period,
      this.startdate,
      this.endDate,
      this.allowedSeat);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('widget.'),
        ),
      ],
    );
  }
}
