import 'package:programa_completo/User/models/User.dart';
import 'package:programa_completo/User/repository/cloud_firestore_api.dart';
import 'package:programa_completo/Place/models/place.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserdataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserDataFirestore(user);

  Future<void> updatePlaceDate(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);
}
