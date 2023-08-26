import 'package:budgetbee/commons/widgets/productcard.dart';
import 'package:flutter/material.dart';

class SingleCategory extends StatefulWidget {
  const SingleCategory({super.key});

  @override
  State<SingleCategory> createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          'Category',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(
                  imagepath: 'assets/clothing.jpeg',
                  productname: 'This product',
                  priceofproduct: '123456'),
              ProductCard(
                  imagepath: 'assets/sports.jpg',
                  productname: 'This product',
                  priceofproduct: '123456'),
            ],
          )
        ],
      ),
    );
  }
}
