import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  //final String text_field;
  final String textlabel;
  final bool obsecure;
  final String validatortext;
  final controller;
  final keyboardtype;
  const AuthTextField({
    super.key,
    //required this.text_field,
    required this.validatortext,
    required this.textlabel,
    required this.obsecure,
    required this.controller,
    required this.keyboardtype,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Card(
        elevation: 2,
        shadowColor: Colors.white,
        child: TextFormField(
          keyboardType: keyboardtype,
          controller: controller,
          obscureText: obsecure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
            //hintText: text_field,
            labelText: textlabel,
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return validatortext;
            }
            return null;
          },
        ),
      ),
    );
  }
}
