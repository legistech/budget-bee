import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ErrorMessage {
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color(0xFF6A50A7),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
