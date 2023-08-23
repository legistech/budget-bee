import 'package:budgetbee/commons/errormessage/errormesage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseProvider extends ChangeNotifier {
  final user = FirebaseAuth.instance.currentUser;

  final addressController = TextEditingController();
  var currentmillisecond = DateTime.now().millisecondsSinceEpoch;
  void addaddress(String address) {
    final databaseRef =
        FirebaseDatabase.instance.ref('users/${user!.uid}/addresses');
    databaseRef.child(currentmillisecond.toString()).set({
      'id': currentmillisecond.toString(),
      'title': address,
    }).then((value) {
      ErrorMessage().toastMessage('address added');
    }).onError((error, stackTrace) {
      ErrorMessage().toastMessage(error.toString());
    });
  }
}
