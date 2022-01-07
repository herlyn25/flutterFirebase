import 'package:flutter/material.dart';

class ButtonFloat extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  ButtonFloat({Key? key, required this.iconData, required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return _ButtonFloat();
  }
}

class _ButtonFloat extends State<ButtonFloat> {
  /*bool _pressed = false;
  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        child: Icon(Icons.favorite_border),
        onPressed: widget.onPressed,
        heroTag: null);
  }
}
