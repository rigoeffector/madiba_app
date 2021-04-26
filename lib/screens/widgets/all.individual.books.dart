import 'package:flutter/material.dart';
import 'package:madiba_app/screens/data/all.individual.books.dart';
import 'package:madiba_app/screens/models/all.individual.books.dart';
import 'package:madiba_app/screens/widgets/all.individual.books.card.dart';

class AllIndivudualBookswidget extends StatelessWidget {
  //  all new book collection data
  final List<AllIndividualBooksPojo> _allIndividualBooksPojo =
      allIndividualBooksPojo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _allIndividualBooksPojo.length,
          itemBuilder: (BuildContext context, int index) {
            return AllIndividualBookCard(
                _allIndividualBooksPojo[index].title,
                _allIndividualBooksPojo[index].author,
                _allIndividualBooksPojo[index].imagePath,
                _allIndividualBooksPojo[index].numberOfItems);
          }),
    );
  }
}
