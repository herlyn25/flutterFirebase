import 'package:flutter/material.dart';
import 'cardImage.dart';

class CardImageList extends StatelessWidget {
  @override
  double heightImage = 200;
  double widthImage = 300;
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: ListView(
          padding: EdgeInsets.all(25),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage("assets/italia1.jpg", widthImage, heightImage),
            CardImage("assets/italia2.jpg", widthImage, heightImage),
            CardImage("assets/italia3.jpg", widthImage, heightImage),
            CardImage("assets/italia4.jpg", widthImage, heightImage),
            CardImage("assets/italia5.jpg", widthImage, heightImage),
          ],
        ));
  }
}
