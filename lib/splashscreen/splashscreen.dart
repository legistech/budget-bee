//import 'package:budgetbee/onboarding/onboard.dart';
import 'package:flutter/material.dart';
import 'package:budgetbee/commons/firebaseservices/splashfunc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashscreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashscreen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A50A7),
      body: Center(
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            height: 140,
          ),
        ),
      ),
    );
  }
}
