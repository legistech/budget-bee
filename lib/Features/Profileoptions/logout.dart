import 'package:budgetbee/Features/Auth/login_screen.dart';
import 'package:budgetbee/commons/errormessage/errormesage.dart';
import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundButton(
            title: 'Log out',
            onTap: () {
              auth.signOut().then((value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const LoginScreen()),
                ).onError((error, stackTrace) {
                  errormessage().toastMessage(error.toString());
                });
              });
            }),
      ),
    );
  }
}
