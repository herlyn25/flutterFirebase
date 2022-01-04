import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/buttonFloat.dart';
import 'package:programa_completo/models/place.dart';

class DescriptionPlaceProfile extends StatelessWidget {
  String name = "Coliseo de Roma ";
  String descripcion =
      "se celebraron luchas de gladiadores y peleas entre animales";
  String urlImage = "";
  int likes = 5;

  DescriptionPlaceProfile(this.name, this.descripcion, this.likes);
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = Container(
      height: 110,
      width: 300,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 30),
      padding: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(descripcion,
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 15, color: Colors.grey)),
            Text("likes: " + likes.toString(),
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
                textAlign: TextAlign.justify)
          ]),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 17, offset: Offset(0, 7))
          ]),
    );
    return Stack(
      alignment: Alignment(0.6, 1.5),
      children: [descriptionPlace, ButtonFloat()],
    );
  }
}
