import 'package:budgetbee/commons/widgets/cartcard.dart';
import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(title: 'My Cart', implyleading: false),
      body: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CartCard(
            yourimage: 'assets/mens.jpeg',
            text: 'mens wear',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 130,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '123,600',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RoundButton(title: 'Checkout', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
