import 'package:cloud_firestore/cloud_firestore.dart';

class Prof {
  final String uId;
  final String firstName;
  final String lastName;
  final String university;

  Prof({
    this.uId,
    this.firstName,
    this.lastName,
    this.university,
  });

  factory Prof.fromDocument(DocumentSnapshot doc) {
    return Prof(
      uId: doc.id,
      firstName: doc.get('firstName'),
      lastName: doc.get('lastName'),
      university: doc.get('university'),
    );
  }
}
