import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class errormessage {
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFF185951),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
