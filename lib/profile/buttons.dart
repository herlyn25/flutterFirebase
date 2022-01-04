import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final VoidCallback onPressed;
  bool mini;
  var icon;
  double iconSize;
  var color;

  Buttons(this.mini, this.icon, this.iconSize, this.color, this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _Buttons();
  }
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: widget.onPressed,
          child: Icon(widget.icon,
              size: widget.iconSize, color: Color(0xFF4268D3)),
          heroTag: null),
    );
  }
}
