import 'package:flutter/material.dart';
import 'star.dart';

class Review extends StatelessWidget {

  final String pathImage;
  final String name;
  final String details;
  final String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    /*    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pathImage))
      ),
    );*/

    final profilePhoto = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
      ),
    );

    final username = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child:  Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 13.0, fontFamily: "Lato", color: Color(0xFF56575a)),
          ),
        ),
        Star(5, margin: EdgeInsets.only(right: 3.0), starSize: 12.0),
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.w900),
      ),
    );

    final reviewInfo = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[username, userInfo, userComment],
      ),
    );

    return Row(
      children: <Widget>[profilePhoto, reviewInfo],
    );
  }
}
