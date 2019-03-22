import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/home/review.dart';

class ReviewList extends StatelessWidget {

  final String pathImage1 = "assets/img/avatar-1.jpg";
  final String pathImage2 = "assets/img/avatar-2.jpg";
  final String pathImage3 = "assets/img/avatar-3.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage1, "Luisa Fernanda", "1 review 5 photos", "There is an amazing place in Ica, Perú!"),
        Review(pathImage2, "Thiago Arce", "1 review 5 photos", "There is an amazing place in Amazonas!"),
        Review(pathImage3, "David Arce", "1 review 5 photos", "There is an amazing place in Machu picchu!"),
      ],
    );
  }
}
