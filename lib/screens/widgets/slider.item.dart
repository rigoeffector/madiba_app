import 'package:flutter/material.dart';
import 'package:madiba_app/screens/models/slider.item.dart';

class SlideItemWidget extends StatelessWidget {
  final int index;
  SlideItemWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: Text(
                slideList[index].header,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
