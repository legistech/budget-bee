import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../commons/firebaseservices/firebaseprovider.dart';
import '../../../commons/widgets/elevatedcustom.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Shipping Address',
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
                        controller: addressController,
                        maxLines: 4,
                        decoration: const InputDecoration(
                            hintText: "Add new address",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RoundButton(
                          title: 'Add address',
                          onTap: () {
                            firebaseProvider
                                .addaddress(addressController.text.toString());
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
