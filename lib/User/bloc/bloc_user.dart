import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/Place/repository/firebase_storage_repository.dart';
import 'package:programa_completo/User/repository/auth_repository.dart';
import 'package:programa_completo/User/repository/cloud_firestore_repository.dart';
import 'package:programa_completo/User/models/User.dart' as userModel;
import 'package:programa_completo/Place/models/place.dart';

class UserBloc extends Bloc {
  final _auth_repository = AuthRepository();

  //Flujo de datos-Streams ---> Stream- Firebase ----> Stream Controller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase; //Devuelve estado de la sesión

  //Obtener usuario actual
  Future<User?> currentUsuario() async {
    User? user = FirebaseAuth.instance.currentUser;
    return user;
  }

  // Casos de uso
  //1. Sign in a google
  // ID usuario Logueado

  Future<UserCredential> signIn() {
    return _auth_repository.signInFirebase();
  }

  //2. Registrar usuario en BD
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(userModel.User user) =>
      _cloudFirestoreRepository.updateUserdataFirestore(user);

  Future<void> updstePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceDate(place);

  final _firebaseStorageRepository = FirebaseStorageRepositoy();
  Future<UploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
