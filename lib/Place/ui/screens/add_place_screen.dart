import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/Place/ui/widgets/cardImage.dart';
import 'package:programa_completo/Place/ui/widgets/text_input_location.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:programa_completo/Widgets/buttonPurple.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';
import 'package:programa_completo/Widgets/text_input.dart';
import 'package:programa_completo/Widgets/title_headers.dart';
import 'package:programa_completo/Place/models/place.dart';

class AddPlaceScreen extends StatefulWidget {
  final File? image;
  AddPlaceScreen({Key? key, required this.image});

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  String title = "Añadir Nuevo lugar";
  final _controllerTitlePlace = TextEditingController();
  final _controllerDescritionPlace = TextEditingController();
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: <Widget>[
      GradienteBack(300),
      Row(children: [
        Container(
            padding: EdgeInsets.only(top: 25, left: 5),
            child: SizedBox(
                height: 45,
                width: 45,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left,
                        color: Colors.white, size: 40),
                    onPressed: () {
                      Navigator.pop(context);
                    }))),
        Flexible(
            child: Container(
          width: screenWidth,
          padding: EdgeInsets.only(top: 35, left: 5),
          child: TitleHeader(title: title),
        ))
      ]),
      Container(
        margin: EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: CardImage(
                  pathImage: widget.image!.path,
                  icondata: Icons.camera_alt,
                  onPressedFabIcon: () => {},
                  heightImage: 250,
                  widthImage: 350,
                  left: 0),
            ), //Foto
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: TextInput(
                  hintText: "Title",
                  inputType: null,
                  controller: _controllerTitlePlace,
                  maxLines: 1,
                )),
            TextInput(
              hintText: "Descripción",
              inputType: TextInputType.multiline,
              controller: _controllerDescritionPlace,
              maxLines: 4,
            ),
            Container(
              child: TextInputLocation(
                  hintText: "Add Location", iconData: Icons.location_on),
            ),
            Container(
              child: ButtonPurple(
                buttonName: "Add Place",
                onPressed: () {
                  //1, Firebase Storagee  // URL Place
                  // Usuario Logueado
                  userBloc.currentUsuario().then((User? user) {
                    if (user != null) {
                      String uid = user.uid;
                      String path = "${uid}/${DateTime.now().toString()}.jpg";
                      userBloc
                          .uploadFile(path, widget.image!)
                          .then((UploadTask uptask) {
                        uptask.then((TaskSnapshot snapshot) {
                          snapshot.ref.getDownloadURL().then((urlImage) {
                            print("URLIMAGE: ${urlImage}");
                            userBloc
                                .updstePlaceData(Place(
                                    name: _controllerTitlePlace.text,
                                    descripcion:
                                        _controllerDescritionPlace.text,
                                    urlImage: urlImage,
                                    likes: 0))
                                .whenComplete(
                                    () => print("Termino de Guardar photo"));
                            Navigator.pop(context);
                          });
                        });
                      });
                    }
                  });
                  // 2. Cloud Firestore Otros datos places
                },
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
