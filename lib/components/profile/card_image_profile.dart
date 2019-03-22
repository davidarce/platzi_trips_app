import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platzi_trips_app/components/ui/card_image.dart';
import 'package:platzi_trips_app/components/ui/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {

  final String path;
  final String title;
  final List<String> tags;
  final int steps;

  CardImageProfile(this.path, this.title, this.tags, this.steps);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(-0.2, 0.5),
      children: <Widget>[
        CardImage(
          pathImage: path,
          withButton: false,
          height: 210.0,
          width: 370.0,
          marginTop: 10.0,
          marginLeft: 10.0,
          marginRight: 10.0,
          marginBottom: 70.0,
        ),
        CardDescriptionImageProfile(title, tags, steps)
      ],
    );
  }
}

class CardDescriptionImageProfile extends StatelessWidget {

  final NumberFormat _formatter = NumberFormat("###,###");
  final String titlePlace;
  final List<String> tags;
  final int steps;

  CardDescriptionImageProfile(this.titlePlace, this.tags, this.steps);

  @override
  Widget build(BuildContext context) {

    final titlePlaceText = Container(
      padding: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
      ),
      child: Text(titlePlace,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            fontSize: 17.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final tagsText = Container(
      padding: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
      ),
      child: Text(tags.join(", "),
        style: TextStyle(
            color: Colors.black38,
            fontFamily: 'Lato',
            fontSize: 13.0,
        ),
      ),
    );


    String formattedSteps = _formatter.format(steps);
    final stepsText =  Container(
      padding: EdgeInsets.only(
        top: 5.0,
        left: 15.0,
      ),
      child: Text("Steps $formattedSteps",
        style: TextStyle(
            color: Color.fromRGBO(210, 159, 10, 1),
            fontFamily: 'Lato',
            fontSize: 16.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final cardDescription = Container(
      height: 120.0,
      width: 280.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titlePlaceText, tagsText, stepsText
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.2),
      children: <Widget>[cardDescription, FloatingActionButtonGreen()],
    );
  }
}
