import 'package:flutter/material.dart';

class Slide {
  final String header;

  final String title;
  final String imageUrl;
  final String description;

  Slide(
      {@required this.header,
      @required this.title,
      @required this.imageUrl,
      @required this.description});
}

final slideList = [
  Slide(
      header: 'Espace Madiba ',
      title: 'About Us',
      imageUrl: "images/sliderz2.png",
      description:
          "Is An Open And Public Platform That Inspires Communities To Read, Discover And Learn . We Provide Access To Educational, "),
  Slide(
      header: 'Espace Madiba',
      title: 'Explore, Learn & Discover',
      imageUrl: "images/sliderz4.png",
      description:
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document "),
  Slide(
      header: 'Espace Madiba',
      title: 'Making Learning Fun',
      imageUrl: "images/sliderz3.jpg",
      description:
          "Kids love it because it's fun. Parents and teachers love it because it's educational. "),
  Slide(
      header: 'Espace ',
      title: 'Events & Networking',
      imageUrl: "images/sliderz1.png",
      description:
          "Kids love it because it's fun. Parents and teachers love it because it's educational. "),
];
