import 'package:flutter/material.dart';
import 'package:rate_your_prof/widgets/text_field_format.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddProfForm extends StatefulWidget {
  @override
  _AddProfFormState createState() => _AddProfFormState();
}

class _AddProfFormState extends State<AddProfForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController universityController = TextEditingController();

  Map data;

  addData() {
    Map<String, dynamic> demoData = {
      "lastName": lastNameController.text,
      "firstName": firstNameController.text,
      "university": universityController.text
    };

    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('profs');
    collectionReference.add(demoData);
  }

  // CHECK

  // _AddProfFormState.initializeApp();

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
              AddProfFormWidget(
                  hintText: 'First Name', formController: firstNameController),
              SizedBox(
                height: 25.0,
              ),
              AddProfFormWidget(
                  hintText: 'Last Name', formController: lastNameController),
              SizedBox(
                height: 25.0,
              ),
              AddProfFormWidget(
                  hintText: 'University/College',
                  formController: universityController),
              SizedBox(
                height: 25.0,
              ),
              RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    addData();
                    Navigator.pushNamed(context, '/profRating');
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
