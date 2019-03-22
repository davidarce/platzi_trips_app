import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/card_image.dart';

class CardImageList extends StatelessWidget {

  final String pathImage1 = "assets/img/river.jpg";
  final String pathImage2 = "assets/img/mountain.jpg";
  final String pathImage3 = "assets/img/sunset.jpg";
  final String pathImage4 = "assets/img/beach.jpg";
  final String pathImage5 = "assets/img/beach_palm.jpg";
  final String pathImage6 = "assets/img/mountain_stars.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(pathImage: pathImage1),
          CardImage(pathImage: pathImage2),
          CardImage(pathImage: pathImage3),
          CardImage(pathImage: pathImage4),
          CardImage(pathImage: pathImage5),
          CardImage(pathImage: pathImage6),
        ],
      ),
    );
  }
}
