import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  final String pathImage;
  final bool withButton;

  final double height;
  final double width;

  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;

  CardImage({
    @required this.pathImage,
    this.withButton = true,
    this.height = 350.0,
    this.width = 250.0,
    this.marginTop = 80.0,
    this.marginLeft= 20.0,
    this.marginRight = 0.0,
    this.marginBottom = 0.0,
    });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: marginTop,
        left: marginLeft,
        right: marginRight,
        bottom: marginBottom
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    if (withButton) {
      return  Stack(
        alignment: Alignment(0.9, 1.1),
        children: <Widget>[card, FloatingActionButtonGreen()],
      );
    }

    return card;
  }
}
