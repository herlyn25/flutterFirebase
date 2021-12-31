import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/herlyn.png", "Herly Castillo", "Un lugar Fascinante",
            "1 review 5 photos"),
        Review("assets/mimore.png", "Sandy Babilonia",
            "Un lugar Extraordinario", "3 review 5 photos"),
        Review("assets/morchis.png", "Maria Martinez", "Un lugar Fascinante",
            "1 review 2 photos"),
      ],
    );
  }
}
