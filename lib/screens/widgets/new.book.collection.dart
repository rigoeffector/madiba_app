import 'package:flutter/material.dart';
import 'package:madiba_app/screens/widgets/new.book.collection.card.dart';

import '../data/new.book.collection.dart';
import '../models/new.c.book.model.dart';

class Newbookcollectionwidget extends StatelessWidget {
  //  all new book collection data
  final List<NewBookCollection> _newbookcollection = newbookcollections;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _newbookcollection.length,
          itemBuilder: (BuildContext context, int index) {
            return Newbookcollectioncard(
                _newbookcollection[index].title,
                _newbookcollection[index].author,
                _newbookcollection[index].imagePath,
                _newbookcollection[index].numberOfItems);
          }),
    );
  }
}
