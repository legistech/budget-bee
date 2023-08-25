import 'package:budgetbee/Features/Profileoptions/subfeatures/myorders.dart';
import 'package:budgetbee/Features/Profileoptions/subfeatures/showaddress.dart';
import 'package:budgetbee/Features/Profileoptions/subfeatures/uploadscreen.dart';
import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:budgetbee/commons/widgets/profiletile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../commons/errormessage/errormesage.dart';
import '../Auth/login_screen.dart';

class ProfileOptions extends StatefulWidget {
  const ProfileOptions({super.key});

  @override
  State<ProfileOptions> createState() => _ProfileOptionsState();
}

class _ProfileOptionsState extends State<ProfileOptions> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(
        title: 'My Profile',
        implyleading: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
                    height: 60,
                    width: 60,
                    fit: BoxFit
                        .cover, // Ensure the image covers the circular area
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Falan Shaks',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('falanfalan@gmai.com'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                ProfileTile(
                  title: 'My orders',
                  subtitle: 'no orders yet',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const MyOrders();
                    }));
                  },
                ),
                WillPopScope(
                  onWillPop: () async {
                    // your code here
                    return false;
                  },
                  child: ProfileTile(
                    title: 'Shipping addresses',
                    subtitle: '0 adresses',
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const AddressScreen();
                      }));
                    },
                  ),
                ),
                ProfileTile(
                  title: 'Payment methods',
                  subtitle: 'visa ***',
                  ontap: () {},
                ),
                ProfileTile(
                  title: 'Upload products',
                  subtitle: 'open your own store and start selling',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const UploadScreen();
                    }));
                  },
                ),
                ProfileTile(
                  title: 'Password',
                  subtitle: 'Change/reset  password',
                  ontap: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                RoundButton(
                    title: 'Log out',
                    onTap: () {
                      auth.signOut().then((value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginScreen()),
                        ).onError((error, stackTrace) {
                          ErrorMessage().toastMessage(error.toString());
                        });
                      });
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
