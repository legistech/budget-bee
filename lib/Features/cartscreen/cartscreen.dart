import 'package:budgetbee/commons/widgets/cartcard.dart';
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
    return const Scaffold(
      appBar: HomeAppBar(title: 'My Cart', implyleading: false),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CartCard(
            yourimage: 'assets/mens.jpeg',
            text: 'mens wear',
          )
        ],
      ),
    );
  }
}
