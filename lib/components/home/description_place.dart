import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/home/review_list.dart';
import 'package:platzi_trips_app/components/ui/star.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final String descriptionPlace;
  final int stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 320.0, right: 20.0, left: 20.0),
            child: Text(
              namePlace,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            )),
        Star(
          4,
          margin: EdgeInsets.only(top: 323.0, right: 3.0),
        ),
      ],
    );

    final descriptionText = Container(
      margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.justify,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        descriptionText,
        ButtonPurple("Navigate"),
        new ReviewList()
      ],
    );
  }
}

class ButtonPurple extends StatelessWidget {
  final String buttonText;

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: InkWell(
        onTap: () {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("Navegando")));
        },
        child: Container(
          height: 50.0,
          width: 180.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4268D3),
                    Color(0xFF584CD1),
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
