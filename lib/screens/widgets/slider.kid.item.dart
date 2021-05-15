import 'package:flutter/material.dart';
import 'package:madiba_app/screens/data/slide.kid.dart';

class SliderKidItem extends StatelessWidget {
  final int index;
  SliderKidItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(slideKidList[index].imageUrl),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          slideKidList[index].title,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
