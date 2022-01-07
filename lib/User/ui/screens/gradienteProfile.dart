import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:programa_completo/User/models/User.dart';
import 'package:programa_completo/User/ui/screens/cardImageProfileList.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';
import 'package:programa_completo/Widgets/title_headers.dart';
import 'package:programa_completo/profile/listBotones.dart';

class GradienteProfile extends StatelessWidget {
  late UserBloc userBloc;
  late User user;
  late String email;
  late String name;

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

      final profile = Stack(children: [
        GradienteBack(300),
        ListView(children: [
          TitleHeader(title: "Profile"),
          descriptionPhoto,
          ListaBotones(),
          CardImageProfileList()
        ])
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
