import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programa_completo/User/repository/auth_repository.dart';

class UserBloc extends Bloc {
  final _auth_repository = AuthRepository();

  //Flujo de datos-Streams ---> Stream- Firebase ----> Stream Controller
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase; //Devuelve estado de la sesión

  Future<UserCredential> signIn() {
    return _auth_repository.signInFirebase();
  }

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
