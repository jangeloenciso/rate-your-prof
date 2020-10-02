import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rate_your_prof/widgets/text_field_format.dart';
import 'package:lottie/lottie.dart';
// import 'package:rate_your_prof/models/profs.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  TextEditingController searchController = TextEditingController();
  Future<QuerySnapshot> futureSearchResults;
  String searchString;
  // controlSearching(String str){
  //   Future<QuerySnapshot> profs = prof
  // }

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
          child: AddProfFormWidget(hintText: 'Prof/University', formController: searchController), // Search box -- using AddProfFormWidget (text_field_format.dart)
        ),
        SizedBox(height: 20.0,),
        Text(
          'can\'t find your prof? click here'
        ),

        //Search funcionality attempt
        Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: (searchString == null || searchString.trim() == '')
            ? FirebaseFirestore.instance.collection('profs').snapshots()
            : FirebaseFirestore.instance.collection('profs').where('searchIndex' , arrayContains: searchString).snapshots(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }
            switch(snapshot.connectionState){
              case ConnectionState.waiting :
              return SizedBox(
                child: Center(
                  child: Lottie.asset('animations/loading.json'),
                ),
              );
              case ConnectionState.none :
              return Text('No data present');

              case ConnectionState.done :
              return Text('Done');

              default :
              return new ListView(
                children: snapshot.data.docs.map((DocumentSnapshot document){
                  return new ListTile(
                    title: StreamBuilder<QuerySnapshot>(
                      Text('hi'),
                    ),
                  );
                }).toList()
              );
            }
          },
          ),
        ),
      ],
    ));
  }
}
