import 'package:flutter/material.dart';
class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void _onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:
      _pressed ? Color(0xFF11DA53) : Color.fromRGBO(221, 221, 221, 1),
      mini: true,
      tooltip: "Fav",
      onPressed: _onPressedFav,
      child: Icon(
        _pressed ? Icons.favorite : Icons.favorite_border,
        color: _pressed ? Colors.white : null,
      ),
    );
  }
}