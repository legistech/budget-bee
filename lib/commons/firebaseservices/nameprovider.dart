import 'package:budgetbee/commons/errormessage/errormesage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseProvider extends ChangeNotifier {
  final user = FirebaseAuth.instance.currentUser;

  final nameController = TextEditingController();
  var currentmillisecond = DateTime.now().millisecondsSinceEpoch;
  void addname(String name) {
    final databaseRef =
        FirebaseDatabase.instance.ref('users/${user!.uid}/name');
    databaseRef.child(currentmillisecond.toString()).set({
      'id': currentmillisecond.toString(),
      'title': name,
    }).then((value) {
      ErrorMessage().toastMessage('name added');
    }).onError((error, stackTrace) {
      ErrorMessage().toastMessage(error.toString());
    });
  }
}
