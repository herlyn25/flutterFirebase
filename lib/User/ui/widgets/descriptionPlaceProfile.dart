import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/buttonFloat.dart';

class DescriptionPlaceProfile extends StatelessWidget {
  String title = "Coliseo de Roma ";
  String description1 = "Medidas: 123, 123, 123"
      "se celebraron luchas de gladiadores y peleas entre animales";
  String description2 = "";
  DescriptionPlaceProfile(this.title, this.description1, this.description2);
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
              title,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(description1,
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 15, color: Colors.grey)),
            Text(description2,
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
