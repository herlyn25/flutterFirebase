import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:programa_completo/User/models/User.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future updateUserDataFirestore(User user) async {
    CollectionReference users = _db.collection(USERS);
    DocumentReference ref = users.doc(user.uid);

    return ref.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }
}
