import 'package:flutter/material.dart';

class ProfRating extends StatefulWidget {
  @override
  _ProfRatingState createState() => _ProfRatingState();
}

class _ProfRatingState extends State<ProfRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0, bottom: 50.0, left: 50.0),
            child: Text(
              'FRANCISCO, RICHARD ANDRE',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(color: Colors.greenAccent, indent: 50,)
        ]));
  }
}
