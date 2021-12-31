import 'package:flutter/material.dart';
import 'package:programa_completo/Place/ui/widgets/reviewList.dart';


import '../widgets/descriptionPlace.dart';
import 'headerAppBar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionPlace =
      "Es un país europeo con una larga costa mediterránea, influyó considerablemente en la cultura y la cocina occidental. Su capital, Roma, es hogar del Vaticano, de ruinas antiguas y de obras de arte emblemáticas. Otras ciudades importantes son Florencia, con obras maestras del renacimiento, como el 'David' de Miguel Ángel y el Domo de Brunelleschi; Venecia, la ciudad de los canales; y Milán, la capital italiana de la moda";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(children: <Widget>[
          DescriptionPlace("Italia", 4, descriptionPlace),
          ReviewList()
        ]),
        HeaderAppBar()
      ],
    );
  }
}
