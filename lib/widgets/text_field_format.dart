import 'package:flutter/material.dart';

class AddProfFormWidget extends StatelessWidget {
  // const AddProfFormWidget({
  //   Key key,
  // }) : super(key: key);

  AddProfFormWidget({this.hintText, this.formController});

  final String hintText;
  final TextEditingController formController;

  emptyTextFormField() {
    formController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // The validator receives the text that the user has entered.
      controller: formController,
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.red[400], width: 1.0),
        ),
        hintText: hintText,
        prefixIcon: Icon(Icons.person_pin, color: Colors.white, size: 30.0),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.white,
          ),
          onPressed: emptyTextFormField,
        ),
      ),
    );
  }
}

// class TextFieldInput extends StatelessWidget {

//   TextFieldInput({this.hintText});

//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: new InputDecoration(
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(50.0)),
//           borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(50.0)),
//           borderSide: BorderSide(color: Colors.red[400], width: 1.0),
//         ),
//         hintText: hintText,
//       ),
//     );
//   }
// }
