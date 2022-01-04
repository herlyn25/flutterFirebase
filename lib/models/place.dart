import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Place {
  String? id;
  String name;
  String descripcion;
  String urlImage;
  int likes;
  User? userOwner;
  bool liked;

  Place(
      {Key? key,
      this.id,
      required this.name,
      required this.descripcion,
      required this.urlImage,
      required this.likes,
      this.liked = false,
      this.userOwner});
}
