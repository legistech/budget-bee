import 'dart:async';

//import 'package:budgetbee/Auth/Authscreen.dart';
import 'package:budgetbee/onboarding/onboard.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  bool hasExecuted = false;
  void isLogin(BuildContext context) {
    if (!hasExecuted) {
      hasExecuted = true; // Set the flag to true

      Timer(const Duration(milliseconds: 1500), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const OnBoard()));
      });
    }
  }
}
