import 'package:budgetbee/Features/Profileoptions/subfeatures/addaddress.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<AddressScreen> {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  final searchfilter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance.ref('users/${user!.uid}/addresses');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Addresses',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShippingAddress(),
              ));
        },
        label: const Text(
          'Add Address',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        //icon: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: FirebaseAnimatedList(
                  query: ref,
                  defaultChild: const Center(
                    child: CircularProgressIndicator(),
                  ),
                  itemBuilder: (context, snapshot, animation, index) {
                    //final title = snapshot.child('title').value.toString();
                    //final subtitle = snapshot.child('subtitle').value.toString;

                    return Column(
                      children: [
                        Card(
                          elevation: 4,
                          surfaceTintColor: const Color(0xFF6A50A7),
                          shadowColor: const Color(0xFF6A50A7),
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(FontAwesomeIcons.house),
                                title: Text(
                                    snapshot.child('title').value.toString()),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      ref
                                          .child(snapshot
                                              .child('subtitle')
                                              .value
                                              .toString())
                                          .remove();
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.trash,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FontAwesomeIcons.solidPenToSquare,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
