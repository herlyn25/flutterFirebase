import 'dart:io';

import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/buttonFloat.dart';

class CardImage extends StatelessWidget {
  final String pathImage;
  final double heightImage;
  final double widthImage;
  double left;
  VoidCallback onPressedFabIcon;
  final IconData icondata;
  CardImage(
      {Key? key,
      required this.pathImage,
      required this.widthImage,
      required this.heightImage,
      required this.onPressedFabIcon,
      required this.icondata,
      required this.left});
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: heightImage,
        width: widthImage,
        margin: EdgeInsets.only(left: left),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: FileImage(File(pathImage))),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38, blurRadius: 17, offset: Offset(0, 7))
            ]));
    return Stack(
      alignment: Alignment(0.9, 1.2),
      children: [
        card,
        ButtonFloat(
          iconData: Icons.favorite_border,
          onPressed: () => {},
        )
      ],
    );
  }
}
