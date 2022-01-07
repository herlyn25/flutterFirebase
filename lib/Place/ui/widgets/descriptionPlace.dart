import 'package:flutter/material.dart';
import 'package:programa_completo/Widgets/buttonPurple.dart';

class DescriptionPlace extends StatelessWidget {
  String nameDescription = "Duwili Ella";
  String descriptionPlace =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.";
  int numberStars = 0;
  final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star, color: Color(0xFFF2C611)));
  final starHalf = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star_half, color: Color(0xFFF2C611)));
  final starVoid = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star_border, color: Color(0xFFF2C611)));

  DescriptionPlace(
      this.nameDescription, this.numberStars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final title_start = Row(
      children: [
        Container(
            margin: EdgeInsets.only(top: 320, left: 30, right: 20),
            child: Text(nameDescription,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.justify)),
        Row(
          children: [star, star, star, star, starVoid],
        )
      ],
    );
    final description = Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 20),
        child: Text(
          descriptionPlace,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575A)),
          textAlign: TextAlign.left,
        ));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_start,
        description,
        ButtonPurple(buttonName: "Navigate", onPressed: () => {})
      ],
    );
  }
}
