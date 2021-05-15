import 'package:flutter/material.dart';
import 'package:madiba_app/activities/all.book.detail.dart';
import 'package:madiba_app/screens/data/all.familly.books.dart';

import 'package:madiba_app/screens/models/all.family.books.dart';

import 'package:madiba_app/screens/widgets/all.individual.books.card.dart';

class AllFamilyBookswidget extends StatelessWidget {
  //  all new book collection data
  final List<AllFamillyBooksPojo> _allFamillyBooksPojo = allFamillyBooksPojo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _allFamillyBooksPojo.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AllBookDetail()));
              },
              child: AllIndividualBookCard(
                  _allFamillyBooksPojo[index].title,
                  _allFamillyBooksPojo[index].author,
                  _allFamillyBooksPojo[index].imagePath,
                  _allFamillyBooksPojo[index].numberOfItems),
            );
          }),
    );
  }
}
