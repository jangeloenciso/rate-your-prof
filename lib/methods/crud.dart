import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Crud {
  Map data;

  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController universityController = TextEditingController();

  addData() {
    String fullQueryKey = lastNameController.text + firstNameController.text;

    List<String> splitList = fullQueryKey.split(' ');
    List<String> indexList = [];

    for (int i = 0; i < splitList.length; i++){
      for(int j = 0; j < splitList[i].length + i; j++){
        indexList.add(splitList[i].substring(0,j).toLowerCase());
      }
    }

    Map<String, dynamic> profData = {
      "lastName": lastNameController.text,
      "firstName": firstNameController.text,
      "university": universityController.text,
      "searchIndex": indexList,
    };

    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('profs');
    collectionReference.add(profData);
  }
}
