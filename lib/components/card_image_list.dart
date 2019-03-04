import 'package:flutter/material.dart';
import 'card_image.dart';

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
          CardImage(pathImage1),
          CardImage(pathImage2),
          CardImage(pathImage3),
          CardImage(pathImage4),
          CardImage(pathImage5),
          CardImage(pathImage6),
        ],
      ),
    );
  }
}
