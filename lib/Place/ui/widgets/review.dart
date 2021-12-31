// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String img,name, comment ,details = "";
  
  final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star, color: Color(0xFFF2C611)));
  Review(this.img, this.name, this.comment, this.details);
  
  @override
  Widget build(BuildContext context) {
    
    final userComment = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Row(children: [
      Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 13, color: Color(0xFFA3A5A7)),
          )),
    ]);
    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17),
      ),
    );

    final userDetails = Column(
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
    );
    return Row(children: [photo, userDetails]);
  }
}
