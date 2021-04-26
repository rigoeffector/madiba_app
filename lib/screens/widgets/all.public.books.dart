import 'package:flutter/material.dart';
import 'package:madiba_app/screens/data/all.public.books.dart';
import 'package:madiba_app/screens/models/all.public.books.dart';
import 'package:madiba_app/screens/widgets/all.public.books.card.dart';

class AllPublicBookswidget extends StatelessWidget {
  //  all new book collection data
  final List<AllPublicBooksPojo> _allpublicBooksPojo = allPublicBooksPojo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 50.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _allpublicBooksPojo.length,
          itemBuilder: (BuildContext context, int index) {
            return AllPublicBookCard(
                _allpublicBooksPojo[index].title,
                _allpublicBooksPojo[index].author,
                _allpublicBooksPojo[index].imagePath,
                _allpublicBooksPojo[index].numberOfItems);
          }),
    );
  }
}
