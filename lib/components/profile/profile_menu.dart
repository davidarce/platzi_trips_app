import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        margin: EdgeInsets.only(top: 220.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButtonMenu(Icons.bookmark_border),
            FloatingActionButtonMenu(Icons.check_box_outline_blank),
            FloatingActionButtonMenu(Icons.add),
            FloatingActionButtonMenu(Icons.mail_outline),
            FloatingActionButtonMenu(Icons.person),
          ],
        ));
  }
}

class FloatingActionButtonMenu extends StatefulWidget {
  final IconData iconData;

  FloatingActionButtonMenu(this.iconData);

  @override
  _FloatingActionButtonMenuState createState() =>
      _FloatingActionButtonMenuState(iconData);
}

class _FloatingActionButtonMenuState extends State<FloatingActionButtonMenu> {
  bool _pressed = false;
  final IconData iconData;

  _FloatingActionButtonMenuState(this.iconData);

  void _onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: _pressed ? Colors.white : Colors.white54,
      mini: !_pressed,
      tooltip: "action",
      onPressed: _onPressedFav,
      child: Icon(
        iconData,
        color: Colors.indigo,
      ),
    );
  }
}
