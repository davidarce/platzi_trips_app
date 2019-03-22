import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/gradient_back.dart';

class HeaderProfile extends StatelessWidget {

  final String title;

  HeaderProfile(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(title: title, height: 400.0, alignmentX: -0.9, alignmentY: -0.8),
        Container(
          margin: EdgeInsets.only(top: 60.0, left: 370.0),
          child: Icon(
            Icons.settings,
            color: Colors.white70,
            size: 18.0,
          ),
        ),
      ],
    );
  }
}
