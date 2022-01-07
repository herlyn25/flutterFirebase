import 'package:flutter/material.dart';

class GradienteBack extends StatelessWidget {
  String title = "";
  double heightGradient = 250.0;
  GradienteBack(this.heightGradient);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightGradient,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
