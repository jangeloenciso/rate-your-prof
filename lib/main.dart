import 'package:flutter/material.dart';
import 'package:rate_your_prof/pages/input_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/inputpage': (context) => InputPage(),
  }
)); 
