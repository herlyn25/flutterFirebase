import 'package:flutter/material.dart';
import 'package:programa_completo/Place/models/place.dart';
import 'cardImageProfile.dart';
import 'descriptionPlaceProfile.dart';

class CardImageProfileList extends StatelessWidget {
  Place place1 = Place(
      name: "Coliseo de Roma ",
      descripcion:
          "se celebraron luchas de gladiadores y peleas entre animales",
      urlImage: "assets/italia1.jpg",
      likes: 5);
  Place place2 = Place(
      name: "Venecia",
      descripcion:
          "Ciudad sin carreteras sus vias son maritimas solo se viaja en barcos.",
      urlImage: "assets/italia2.jpg",
      likes: 20);
  Place place = Place(
      name: "Torre de Pisa",
      descripcion:
          "Es la torre campanario de la catedral de Pisa, situada en la plaza del Duomo de Pisa, ciudad con mismo nombre",
      urlImage: "assets/italia2.jpg",
      likes: 8);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CardImageProfile(place1.urlImage),
        DescriptionPlaceProfile(place1.name, place1.descripcion, place1.likes),
        CardImageProfile(place2.urlImage),
        DescriptionPlaceProfile(place2.name, place2.descripcion, place2.likes),
        CardImageProfile(place.urlImage),
        DescriptionPlaceProfile(place.name, place.descripcion, place.likes)
      ],
    ));
  }
}
