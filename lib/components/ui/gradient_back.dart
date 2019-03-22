import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  final String title;
  final double height;

  final double alignmentX;
  final double alignmentY;

  GradientBack({
    @required this.title,
    @required this.height,
    this.alignmentX = -0.9,
    this.alignmentY = -0.7
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(title,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Lato",
            fontSize: 30.0,
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(alignmentX, alignmentY),
    );
  }
}
