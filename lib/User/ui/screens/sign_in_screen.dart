import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/User/bloc/bloc_user.dart';
import 'package:programa_completo/User/models/User.dart' as userModel;
import 'package:programa_completo/User/ui/widgets/button_green.dart';
import 'package:programa_completo/Widgets/buttonNavegation.dart';
import 'package:programa_completo/Widgets/gradienteBack.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  late UserBloc userBloc;
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return ButtonNavigation();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradienteBack(700),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                    child: Container(
                        width: screenWidth,
                        child: Text(
                          "Bienvenido a \nNuestra pagina de lugares de Italia",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
                ButtonGreen(
                    text: "Login With Gmail",
                    onPressed: () {
                      userBloc.signOut();
                      userBloc.signIn().then((value) {
                        userBloc.updateUserData(userModel.User(
                            uid: value.user!.uid,
                            name: value.user!.displayName.toString(),
                            email: value.user!.email.toString(),
                            photoURL: value.user!.photoURL.toString()));
                      });
                    },
                    height: 30,
                    width: 300)
              ])
        ],
      ),
    );
  }
}
