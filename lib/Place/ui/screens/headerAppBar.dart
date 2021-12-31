import 'package:flutter/material.dart';
import 'package:programa_completo/Place/ui/widgets/cardImageList.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradienteBack("Bienvenidos", 250), CardImageList()],
    );
  }
}
