import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final int _defaultNumberStars = 5;
  final Color _defaultColorStar = Colors.amberAccent;
  final double _defaultStarSize = 17.0;

  final int _numberStars;
  final Color colorStar;
  final double starSize;
  final EdgeInsets margin;

  Star(this._numberStars, {
    this.colorStar,
    this.starSize,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return showStars(_numberStars);
  }

  Widget showStars(int numberStars) {
    List<Widget> rowStars = [];
    List<Widget> rowStarsBorder = [];

    List(numberStars).forEach((i) => rowStars.add(star(true)));
    List((numberStars - _defaultNumberStars).abs())
        .forEach((i) => rowStarsBorder.add(star(false)));

    List<Widget> finalStar = []..addAll(rowStars)..addAll(rowStarsBorder);
    return Row(children: finalStar);
  }

  Widget star(bool withBorder) {
    return Container(
      margin: margin,
      child: Icon(withBorder ? Icons.star : Icons.star_border,
          size: starSize ?? _defaultStarSize,
          color: colorStar ?? _defaultColorStar),
    );
  }

}
