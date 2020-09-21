import 'package:flutter/material.dart';

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
          child: TextField(
            decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.red[400], width: 2.0),
              ),
              hintText: '   Professor/University',
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Text(
          'can\'t find your prof? click here'
        ),
      ],
    ));
  }
}
