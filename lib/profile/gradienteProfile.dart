import 'package:flutter/material.dart';
import 'package:programa_completo/User/ui/screens/cardImageProfileList.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';
import 'package:programa_completo/profile/buttons.dart';

class GradienteProfile extends StatelessWidget {
  String title = "Profile";
  String email = "herly-1988@hotmail.com";
  String name = "Herly Castillo";
  Color colorButton = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 120, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/herlyn.png"))),
    );
    final description = Container(
      margin: EdgeInsets.only(top: 140, left: 120),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(name,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 20, color: Colors.white)),
        Text(email,
            style:
                TextStyle(fontFamily: "Lato", fontSize: 20, color: Colors.grey))
      ]),
    );

    final botones = Row(
      children: [
        Buttons(
            Icon(
              Icons.bookmark_border_outlined,
              color: Color(0xFF4268D3),
            ),
            30,
            30,
            Colors.white),
        Buttons(Icon(Icons.wallet_giftcard, color: Color(0xFF4268D3)), 30, 30,
            Colors.grey),
        Buttons(
            Icon(
              Icons.add,
              color: Color(0xFF4268D3),
              size: 40,
            ),
            60,
            60,
            Colors.white),
        Buttons(Icon(Icons.markunread_outlined, color: Color(0xFF4268D3)), 30,
            30, Colors.grey),
        Buttons(
            Icon(Icons.person, color: Color(0xFF4268D3)), 30, 30, Colors.grey)
      ],
    );

    final profile = Stack(children: [
      GradienteBack(title, 400),
      photo,
      description,
      botones,
      CardImageProfileList()
    ]);
    return profile;
  }
}
