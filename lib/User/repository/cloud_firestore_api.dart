import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:programa_completo/User/models/User.dart' as model;

import 'package:programa_completo/Place/models/place.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserDataFirestore(model.User user) async {
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

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(PLACES);
    String uid = (await _auth.currentUser!).uid;
    await refPlaces.add({
      'name': place.name,
      'description': place.descripcion,
      'likes': place.likes,
      'userOwner': "$USERS/$uid"
    });
  }
}
