import 'package:flutter/material.dart';
import 'package:rate_your_prof/pages/input_page.dart';
import 'package:rate_your_prof/pages/prof_rating.dart';
import 'package:rate_your_prof/pages/add_prof.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RateYourProf());
  }

class RateYourProf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
          '/profRating': (context) => ProfRating(),
          '/addProf': (context) => AddProfForm(),
        });
  }
}
