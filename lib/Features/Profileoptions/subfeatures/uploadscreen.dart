import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:budgetbee/commons/firebaseservices/productprovider.dart';
import '../../../commons/widgets/elevatedcustom.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final productController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Upload product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ChangeNotifierProvider(
            create: (_) => FirebaseProvider(),
            child: Consumer<FirebaseProvider>(
              builder: (context, firebaseProvider, _) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: productController,
                        maxLines: 2,
                        decoration: const InputDecoration(
                            hintText: "product name",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: priceController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                            hintText: "product price",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: descriptionController,
                        maxLines: 5,
                        decoration: const InputDecoration(
                            hintText: "product description",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RoundButton(
                          title: 'upload pictures to Add product',
                          onTap: () {
                            firebaseProvider.addProductWithImage(
                              productController.text.toString(),
                              descriptionController.text.toString(),
                              priceController.text.toString(),
                            );
                          })
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
