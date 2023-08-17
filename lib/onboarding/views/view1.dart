import 'package:flutter/material.dart';

class OnBoard1 extends StatelessWidget {
  const OnBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/onboard1.png',
            height: 300,
          ),
        ),
        const SizedBox(
          height: 50,
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
        const Text(
          'Shop without interuption',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Container(
          padding: const EdgeInsets.all(35),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
