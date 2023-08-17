import 'package:flutter/material.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/onboard2.png',
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
          'Shop from multiple Vendors',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.all(35),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 49,
        ),
      ],
    );
  }
}
