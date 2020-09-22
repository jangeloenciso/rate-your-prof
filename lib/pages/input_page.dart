import 'package:flutter/material.dart';
import 'package:rate_your_prof/widgets/text_field_format.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            'RATE YOUR PROFESSOR',
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: TextFieldInput(hintText: 'Prof/University'),
        ),
        SizedBox(height: 20.0,),
        Text(
          'can\'t find your prof? click here'
        ),
      ],
    ));
  }
}
