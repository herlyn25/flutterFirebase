import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/Place/ui/screens/add_place_screen.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:image_picker/image_picker.dart';

import 'buttons.dart';

class ListaBotones extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    final picker = ImagePicker();
    return Row(
      children: [
        //Cambiar Contraseña
        Buttons(
            true, Icons.vpn_key, 20, Color.fromRGBO(255, 255, 255, 1), () {}),
        ////Añadir Nueva foto
        Buttons(false, Icons.add, 40, Color.fromRGBO(255, 255, 255, 1), () {
          picker.pickImage(source: ImageSource.camera).then((XFile? image) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        AddPlaceScreen(image: File(image!.path))));
          }).catchError((onError) => print(onError));
        }),
        // Cerrar la sesión
        Buttons(true, Icons.exit_to_app, 20, Color.fromRGBO(255, 255, 255, 0.6),
            () {
          userBloc.signOut();
        }),
      ],
    );
  }
}
