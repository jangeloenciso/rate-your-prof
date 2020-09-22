import 'package:flutter/material.dart';


class TextFieldInput extends StatelessWidget {
  
  TextFieldInput({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.red[400], width: 1.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
