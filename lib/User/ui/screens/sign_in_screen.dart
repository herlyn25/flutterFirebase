import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/widgets/button_green.dart';
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
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bienvenido a \nNuestra pagina de lugares de Italia",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                ButtonGreen(
                    text: "Login With Gmail",
                    onPressed: () {},
                    height: 30,
                    width: 300)
              ])
        ],
      ),
    );
  }
}
