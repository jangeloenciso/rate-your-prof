import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Crud {
  Map data;

  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController universityController = TextEditingController();

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
}
