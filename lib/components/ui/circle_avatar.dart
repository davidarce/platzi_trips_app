import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String pathImage;

  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;

  final double height;
  final double width;

  const CircleImage.margin(
      {this.pathImage,
      this.height = 80.0,
      this.width = 80.0,
      this.marginTop = 0.0,
      this.marginLeft = 0.0,
      this.marginRight = 0.0,
      this.marginBottom = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: marginTop,
          left: marginLeft,
          right: marginRight,
          bottom: marginBottom),
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
          ),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
  }
}
