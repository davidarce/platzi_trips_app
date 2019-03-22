import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/gradient_back.dart';
import 'package:platzi_trips_app/components/home/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  final String title;

  HeaderAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(title: title, height: 250.0),
        CardImageList()
      ],
    );
  }
}
