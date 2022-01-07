import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:programa_completo/Place/repository/firebase_storage_api.dart';

class FirebaseStorageRepositoy {
  FirebaseStorageApi _firebaseStorageApi = FirebaseStorageApi();
  Future<UploadTask> uploadFile(String path, File image) =>
      _firebaseStorageApi.uploadFile(path, image);
}
