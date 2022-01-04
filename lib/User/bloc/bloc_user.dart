import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/User/repository/auth_repository.dart';
import 'package:programa_completo/User/repository/cloud_firestore_repository.dart';
import 'package:programa_completo/User/models/User.dart' as userModel;

class UserBloc extends Bloc {
  final _auth_repository = AuthRepository();

  //Flujo de datos-Streams ---> Stream- Firebase ----> Stream Controller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase; //Devuelve estado de la sesión

  // Casos de uso
  //1. Sign in a google
  Future<UserCredential> signIn() {
    return _auth_repository.signInFirebase();
  }

  // Registrar usuario en BD
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(userModel.User user) =>
      _cloudFirestoreRepository.updateUserdataFirestore(user);

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
