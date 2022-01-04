import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:programa_completo/User/models/User.dart';
import 'package:programa_completo/User/ui/screens/cardImageProfileList.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';
import 'package:programa_completo/profile/buttons.dart';

class GradienteProfile extends StatelessWidget {
  late UserBloc userBloc;
  String title = "";
  late User user;
  String email = "herly-1988@hotmail.com";
  String name = "Herly Castillo";
  Color colorButton = Colors.blueAccent;

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logueado");
      return Container(
          margin: EdgeInsets.only(top: 90, left: 20),
          child: Column(children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar informacion",
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 20, color: Colors.grey))
          ]));
    } else {
      print("Logueado");
      user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL);
      final photo = Container(
        margin: EdgeInsets.only(top: 60, left: 20),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(user.photoURL))),
      );

      final description = Container(
        margin: EdgeInsets.only(top: 90, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(user.name,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 20, color: Colors.white)),
          Text(user.email,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 20, color: Colors.grey))
        ]),
      );

      final descriptionPhoto = Row(children: [photo, description]);
      final botones = Row(
        children: [
          //Cambiar Contraseña
          Buttons(
              true, Icons.vpn_key, 20, Color.fromRGBO(255, 255, 255, 1), () {}),
          ////Añadir Nueva foto
          Buttons(
              false, Icons.add, 40, Color.fromRGBO(255, 255, 255, 1), () {}),
          // Cerrar la sesión
          Buttons(
              true, Icons.exit_to_app, 20, Color.fromRGBO(255, 255, 255, 0.6),
              () {
            userBloc.signOut();
          }),
        ],
      );

      final profile = Stack(children: [
        GradienteBack(title, 300),
        ListView(children: [descriptionPhoto, botones, CardImageProfileList()])
      ]);
      return profile;
    }
  }

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
            default:
              return showProfileData(snapshot);
          }
        });
  }
}
