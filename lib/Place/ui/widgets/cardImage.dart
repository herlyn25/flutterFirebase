import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/buttonFloat.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/italia1.jpg";
  double heightImage = 200;
  double widthImage = 300;
  CardImage(this.pathImage, this.widthImage, this.heightImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: heightImage,
        width: widthImage,
        margin: EdgeInsets.only(top: 80, left: 20),
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
      children: [card, ButtonFloat()],
    );
  }
}
