import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Color colorContainer = Colors.white;
  double heightButton = 60;
  double widthButton = 60;
  Widget icon = Icon(Icons.ac_unit);
  Buttons( this.icon,this.heightButton, this.widthButton, this.colorContainer);

  // Construccion de un Boton encerrado
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 220, left: 40),
      width: heightButton,
      height: widthButton,
      decoration: BoxDecoration(shape: BoxShape.circle, color: colorContainer),
      child:icon,
    );
  }
}
