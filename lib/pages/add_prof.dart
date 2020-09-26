// Rewrite this file, use a form

import 'package:flutter/material.dart';
import 'package:rate_your_prof/widgets/text_field_format.dart';

class AddProfForm extends StatefulWidget {
  @override
  _AddProfFormState createState() => _AddProfFormState();
}

class _AddProfFormState extends State<AddProfForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ADD PROF'), centerTitle: true),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AddProfFormWidget(hintText: 'First Name'),
              SizedBox(height: 25.0,),
              AddProfFormWidget(hintText: 'Last Name'),
              SizedBox(height: 25.0,),
              AddProfFormWidget(hintText: 'University/College'),
              SizedBox(height: 25.0,),
              RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.

                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// INITIAL UI

// class AddProf extends StatefulWidget {
//   @override
//   _AddProfState createState() => _AddProfState();
// }

// class _AddProfState extends State<AddProf> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ADD A PROF'),
//         centerTitle: true,
//       ),
//       body: Container(
//         margin: EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'FIRST NAME',
//                   style: TextStyle(fontSize: 15.0),
//                 ),
//               ),
//               SizedBox(height: 15.0),
//               TextFieldInput(),
//               SizedBox(height: 30.0),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'LAST NAME',
//                   style: TextStyle(fontSize: 15.0),
//                 ),
//               ),
//               SizedBox(height: 15.0),
//               TextFieldInput(),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'COLLEGE/UNIVERSITY',
//                   style: TextStyle(fontSize: 15.0),
//                 ),
//               ),
//               SizedBox(height: 15.0),
//               TextFieldInput(),
//               SizedBox(height: 20.0),
//               RaisedButton(
//                   color: Color(0xFFEB1555),
//                   onPressed: () {},
//                   child: Text('SUBMIT'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AddProfForm extends StatefulWidget {
//   @override
//   _AddProfFormState createState() => _AddProfFormState();
// }

// class _AddProfFormState extends State<AddProfForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
