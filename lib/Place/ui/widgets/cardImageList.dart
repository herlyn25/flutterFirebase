import 'package:flutter/material.dart';
import 'cardImage.dart';

class CardImageList extends StatelessWidget {
  @override
  double heightImage = 200;
  double widthImage = 300;
  double left = 15;
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: ListView(
          padding: EdgeInsets.all(25),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage(
                pathImage: "assets/italia1.jpg",
                icondata: Icons.favorite_border,
                onPressedFabIcon: () => {},
                heightImage: heightImage,
                widthImage: widthImage,
                left: left),
            CardImage(
                pathImage: "assets/italia2.jpg",
                icondata: Icons.favorite_border,
                onPressedFabIcon: () => {},
                heightImage: heightImage,
                widthImage: widthImage,
                left: left),
            CardImage(
                pathImage: "assets/italia3.jpg",
                icondata: Icons.favorite_border,
                onPressedFabIcon: () => {},
                heightImage: heightImage,
                widthImage: widthImage,
                left: left),
            CardImage(
                pathImage: "assets/italia4.jpg",
                icondata: Icons.favorite_border,
                onPressedFabIcon: () => {},
                heightImage: heightImage,
                widthImage: widthImage,
                left: left),
            CardImage(
                pathImage: "assets/italia5.jpg",
                icondata: Icons.favorite_border,
                onPressedFabIcon: () => {},
                heightImage: heightImage,
                widthImage: widthImage,
                left: left),
          ],
        ));
  }
}
