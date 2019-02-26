import 'package:flutter/material.dart';
import 'star.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final String descriptionPlace;
  final int stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {

    final titleStars = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 320.0, right: 20.0, left: 20.0),
            child: Text(
              namePlace,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            )),
        Star(4, margin: EdgeInsets.only(top: 323.0, right: 3.0),
        ),
      ],
    );

    final descriptionText = Container(
      margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      children: <Widget>[titleStars, descriptionText],
    );
  }
}
