import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/screens/descriptionPlaceProfile.dart';
import 'package:programa_completo/Place/models/place.dart';

class CardImageProfile extends StatelessWidget {
  String place;
  double widthImage = 450;
  double heightImage = 250;

  CardImageProfile(this.place);
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: heightImage,
        width: widthImage,
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(place)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38, blurRadius: 17, offset: Offset(0, 6))
            ]));
    return Container(
      alignment: Alignment(0.5, 0.5),
      child: card,
    );
  }
}
