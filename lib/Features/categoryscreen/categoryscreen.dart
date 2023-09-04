import 'package:budgetbee/Features/Profileoptions/subfeatures/myorders.dart';
import 'package:budgetbee/commons/widgets/categorycard.dart';
import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'Categories',
        implyleading: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: const Color(0xFF6A50A7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'SUMMER SALES',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'UPTO 50% off',
                      style: TextStyle(
                        //fontSize: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              CategoryCard(
                yourimage: 'assets/sports.jpg',
                categorytext: 'Sports Equipments',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/techcategory.jpg',
                categorytext: 'Technology',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/gaming.jpeg',
                categorytext: "Gaming PC's",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/fashion.jpeg',
                categorytext: "Women's Fashion",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/mens.jpeg',
                categorytext: "Men's Fashion",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/gaming.jpeg',
                categorytext: "Gaming PC's",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/fashion.jpeg',
                categorytext: 'Fahion Items',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/gaming.jpeg',
                categorytext: "Gaming PC's",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
              CategoryCard(
                yourimage: 'assets/fashion.jpeg',
                categorytext: 'Fahion Items',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyOrders();
                  }));
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}
