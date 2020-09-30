import 'package:flutter/material.dart';

class ProfRating extends StatefulWidget {
  @override
  _ProfRatingState createState() => _ProfRatingState();
}

class _ProfRatingState extends State<ProfRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      margin: EdgeInsets.fromLTRB(60.0, 0.0, 15.0, 0.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'FRANCISCO, RICHARD ANDRE', 
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'ATENEO DE NAGA UNIVERSITY',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.greenAccent,
              indent: 50,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              '5/5',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
    ));
  }
}
