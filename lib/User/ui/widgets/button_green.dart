import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  ButtonGreen(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.height,
      required this.width});

  @override
  State<StatefulWidget> createState() {
    return _ButtonGreen();
  }
}

class _ButtonGreen extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Color(0xFFA7FF84), Color(0xFF1CBB78)],
                begin: FractionalOffset(0.2, 0),
                end: FractionalOffset(1, 0.6),
                stops: [0, 0.6],
                tileMode: TileMode.clamp),
          ),
          child: Center(
              child: Text(
            widget.text,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 18, color: Colors.white),
          )),
        ));
  }
}
