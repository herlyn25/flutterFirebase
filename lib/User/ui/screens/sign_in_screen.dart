import 'package:flutter/material.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradienteBack("", 700),
          Column(children: <Widget>[
            Text(
              "Bienvenido a \nNuestra pagina de lugares de Italia",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 37,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ])
        ],
      ),
    );
  }
}
