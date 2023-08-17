import 'dart:async';
import 'package:budgetbee/Features/Home/home_screen.dart';
import 'package:budgetbee/onboarding/onboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  bool hasExecuted = false;
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      // Set the flag to true

      Timer(const Duration(milliseconds: 1500), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    } else {
      Timer(const Duration(milliseconds: 1500), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const OnBoard()));
      });
    }
  }
}
