//import 'package:budgetbee/Auth/Authscreen.dart';
import 'package:budgetbee/Features/Auth/Login_screen.dart';
import 'package:flutter/material.dart';

import '../../commons/widgets/elevatedcustom.dart';

class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 45,
        ),
        Center(
          child: Image.asset(
            'assets/onboard3.png',
            height: 300,
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Transform.rotate(
          angle: 3.14,
          child: Material(
            elevation: 2,
            child: Container(
              height: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Column(
          children: [
            Text(
              'Easy methods of payment',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // const SizedBox(
        //   height: 40,
        // ),
        Container(
          padding: const EdgeInsets.all(35),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            textAlign: TextAlign.center,
          ),
        ),
        RoundButton(
            title: 'Get Started',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const LoginScreen()));
            })
      ],
    );
  }
}
