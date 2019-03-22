import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/profile/card_image_profile.dart';

class CardImageProfileList extends StatelessWidget {

  final String pathImage1 = "assets/img/river.jpg";
  final String pathImage2 = "assets/img/mountain.jpg";
  final String pathImage3 = "assets/img/sunset.jpg";
  final String pathImage4 = "assets/img/beach.jpg";
  final String pathImage5 = "assets/img/beach_palm.jpg";
  final String pathImage6 = "assets/img/mountain_stars.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 275.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          CardImageProfile(pathImage1, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
          CardImageProfile(pathImage2, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
          CardImageProfile(pathImage3, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
          CardImageProfile(pathImage4, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
          CardImageProfile(pathImage5, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
          CardImageProfile(pathImage6, "Knuckles Mountains Range", ["Hiking", "Water hall hunting", "Natural bath", "Scenery & Photography"], 123123123),
        ],
      ),
    );
  }
}
