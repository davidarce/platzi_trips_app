import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/circle_avatar.dart';

class ProfileInformation extends StatelessWidget {
  final String name;
  final String email;

  ProfileInformation(this.name, this.email);

  @override
  Widget build(BuildContext context) {
    final photo = CircleImage.margin(
        pathImage: "assets/img/avatar-1.jpg",
        marginLeft: 20.0,
        width: 100.0,
        height: 100.0);

    final username = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
          fontSize: 17.0,
          fontWeight: FontWeight.w300
        ),
      ),
    );

    final userEmail = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          email,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Late', fontSize: 13.0, color: Colors.white30),
        ));

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[username, userEmail],
    );

    return Container(
        margin: EdgeInsets.only(top: 100.0),
        child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[photo, userInfo]));
  }
}
