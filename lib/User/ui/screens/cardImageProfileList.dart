import 'package:flutter/material.dart';
import 'cardImageProfile.dart';
import '../widgets/descriptionPlaceProfile.dart';

class CardImageProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 520,
        margin: EdgeInsets.only(top: 250),
        child: ListView(
          padding: EdgeInsets.all(25),
          children: <Widget>[
            CardImageProfile(
                "assets/italia1.jpg",
                DescriptionPlaceProfile(
                    "Coliseo de Roma ",
                    "se celebraron luchas de gladiadores y peleas entre animales",
                    "Medidas: 123, 123, 123")),
            CardImageProfile(
                "assets/italia2.jpg",
                DescriptionPlaceProfile(
                  "Venecia ",
                  "Ciudad sin carreteras sus vias son maritimas solo se viaja en barcos.",
                  "Medidas: 432, 879, 345",
                )),
            CardImageProfile(
                "assets/italia2.jpg",
                DescriptionPlaceProfile(
                    "Torre de Pisa",
                    "Es la torre campanario de la catedral de Pisa, situada en la plaza del Duomo de Pisa, ciudad con mismo nombre",
                    "Medidas: 756, 973, 309"))
          ],
        ));
  }
}
