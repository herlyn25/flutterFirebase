
import 'package:programa_completo/User/models/User.dart';
import 'package:programa_completo/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserdataFirestore(User user) => _cloudFirestoreAPI.updateUserDataFirestore(user);
}
