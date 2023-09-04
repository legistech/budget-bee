import 'dart:io';

import 'package:budgetbee/commons/errormessage/errormesage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FirebaseProvider extends ChangeNotifier {
  var currentmillisecond = DateTime.now().millisecondsSinceEpoch;
  final productController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  // void addproduct(String product, String description, String price) async {
  //   final databaseRef = FirebaseDatabase.instance.ref('/posts/products');
  //   databaseRef.child(currentmillisecond.toString()).set({
  //     'id': currentmillisecond.toString(),
  //     'Product name': product,
  //     'product description': description,
  //     'Product price': price,
  //   }).then((value) {
  //     ErrorMessage().toastMessage('product added');
  //   }).onError((error, stackTrace) {
  //     ErrorMessage().toastMessage(error.toString());
  //   });
  // }

  Future<void> uploadImage(File imageFile) async {
    String fileName = currentmillisecond.toString();
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('images/$fileName.jpg');
    UploadTask uploadTask = firebaseStorageRef.putFile(imageFile);
    await uploadTask.whenComplete(() => null);
  }

  Future<void> addProductWithImage(
      String product, String description, String price) async {
    final picker = ImagePicker();
    XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      await uploadImage(imageFile);
      final databaseRef = FirebaseDatabase.instance.ref('/posts/products');
      databaseRef.child(DateTime.now().millisecondsSinceEpoch.toString()).set({
        'id': currentmillisecond.toString(),
        'Product name': product,
        'product description': description,
        'Product price': price,
        'image_url': await FirebaseStorage.instance
            .ref('images/${currentmillisecond.toString()}.jpg')
            .getDownloadURL(),
      }).then((value) {
        ErrorMessage().toastMessage('product added');
      }).onError((error, stackTrace) {
        ErrorMessage().toastMessage(error.toString());
      });
    }
  }
}
