import 'package:flutter/material.dart';

class ButtonFloat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonFloat();
  }
}

class _ButtonFloat extends State<ButtonFloat> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        child: Icon(this._pressed ? Icons.favorite_border : Icons.favorite),
        onPressed: onPressedFav);
  }
}
