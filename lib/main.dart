import 'package:flutter/material.dart';
import 'package:rate_your_prof/pages/input_page.dart';
import 'package:rate_your_prof/pages/prof_rating.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
  initialRoute: '/',
  routes: {
    '/': (context) => InputPage(),
    '/profRating': (context) => ProfRating(),
  }
)); 
