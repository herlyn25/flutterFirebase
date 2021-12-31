import 'package:flutter/material.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:programa_completo/Widgets/buttonNavegation.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() {
  runApp(const MyApp());
}

String descriptionPlace =
    "Es un país europeo con una larga costa mediterránea, influyó considerablemente en la cultura y la cocina occidental. Su capital, Roma, es hogar del Vaticano, de ruinas antiguas y de obras de arte emblemáticas. Otras ciudades importantes son Florencia, con obras maestras del renacimiento, como el 'David' de Miguel Ángel y el Domo de Brunelleschi; Venecia, la ciudad de los canales; y Milán, la capital italiana de la moda";
String img = "assets/imagenredonda.png";
String name = "Varuna Yasas";
String comment = "There is an amazing place in Sri Lanka";
String details = "1 review 5 photos";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: ButtonNavigation()),
        bloc: UserBloc());
  }
}
