import 'package:flutter/material.dart';

class KidsBook {
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final String reviews;
  final String author;

  KidsBook(
      {@required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      @required this.reviews,
      @required this.author});
}
