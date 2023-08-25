import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'Upload Product',
        implyleading: true,
      ),
      body: Column(
        children: [
          Text('select an image to upload'),
          Text(
            'product name',
          ),
          Text(
            'product price',
          ),
          Text(
            'product description',
          ),
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  _pickImage();
                },
                icon: Icon(Icons.abc));
          }),
          if (_imageFile != null) Expanded(child: Image.file(_imageFile!)),
        ],
      ),
    );
  }
}
