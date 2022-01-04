import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/descriptionPlaceProfile.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage = "assets/italia1.jpg";
  double widthImage = 450;
  double heightImage = 200;
  Widget es = DescriptionPlaceProfile("1", "234", "3345");
  CardImageProfile(this.pathImage, this.es);
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: heightImage,
        width: widthImage,
        margin: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 40),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38, blurRadius: 17, offset: Offset(0, 7))
            ]));
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [card, es],
    );
  }
}
