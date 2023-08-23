import 'package:budgetbee/Features/Profileoptions/subfeatures/myorders.dart';
import 'package:budgetbee/commons/widgets/categorycard.dart';
import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'image': 'assets/fashion.jpeg',
        'text': 'Fashion Items',
        'onTap': () {},
      },
      {
        'image': 'assets/fashion.jpeg',
        'text': 'Clothing',
        'onTap': () {},
      },
      {
        'image': 'assets/shoes.jpeg',
        'text': 'Shoes',
        'onTap': () {},
      },
      {
        'image': 'assets/accessories.jpeg',
        'text': 'Accessories',
        'onTap': () {},
      },
      {
        'image': 'assets/jewelry.jpeg',
        'text': 'Jewelry',
        'onTap': () {},
      },
      {
        'image': 'assets/watches.jpeg',
        'text': 'Watches',
        'onTap': () {},
      },
      {
        'image': 'assets/bags.jpeg',
        'text': 'Bags',
        'onTap': () {},
      },
      {
        'image': 'assets/beauty.jpeg',
        'text': 'Beauty Products',
        'onTap': () {},
      },
      {
        'image': 'assets/skincare.jpeg',
        'text': 'Skincare',
        'onTap': () {},
      },
      {
        'image': 'assets/haircare.jpeg',
        'text': 'Haircare',
        'onTap': () {},
      },
      {
        'image': 'assets/fragrances.jpeg',
        'text': 'Fragrances',
        'onTap': () {},
      },
      {
        'image': 'assets/makeup.jpeg',
        'text': 'Makeup',
        'onTap': () {},
      },
      {
        'image': 'assets/electronics.jpeg',
        'text': 'Electronics',
        'onTap': () {},
      },
      {
        'image': 'assets/phones.jpeg',
        'text': 'Mobile Phones',
        'onTap': () {},
      },
      {
        'image': 'assets/laptops.jpeg',
        'text': 'Laptops',
        'onTap': () {},
      },
      {
        'image': 'assets/tablets.jpeg',
        'text': 'Tablets',
        'onTap': () {},
      },
      {
        'image': 'assets/audio.jpeg',
        'text': 'Audio Devices',
        'onTap': () {},
      },
      {
        'image': 'assets/tv.jpeg',
        'text': 'TVs',
        'onTap': () {},
      },
      {
        'image': 'assets/cameras.jpeg',
        'text': 'Cameras',
        'onTap': () {},
      },
      {
        'image': 'assets/appliances.jpeg',
        'text': 'Home Appliances',
        'onTap': () {},
      },
      {
        'image': 'assets/kitchen.jpeg',
        'text': 'Kitchen Gadgets',
        'onTap': () {},
      },
      {
        'image': 'assets/home_decor.jpeg',
        'text': 'Home Decor',
        'onTap': () {},
      },
      {
        'image': 'assets/furniture.jpeg',
        'text': 'Furniture',
        'onTap': () {},
      },
      {
        'image': 'assets/bedding.jpeg',
        'text': 'Bedding',
        'onTap': () {},
      },
      {
        'image': 'assets/bath.jpeg',
        'text': 'Bath and Shower',
        'onTap': () {},
      },
      {
        'image': 'assets/sports.jpeg',
        'text': 'Sports Equipment',
        'onTap': () {},
      },
      {
        'image': 'assets/fitness.jpeg',
        'text': 'Fitness Gear',
        'onTap': () {},
      },
      {
        'image': 'assets/outdoors.jpeg',
        'text': 'Outdoor Gear',
        'onTap': () {},
      },
      {
        'image': 'assets/automotive.jpeg',
        'text': 'Automotive Accessories',
        'onTap': () {},
      },
      {
        'image': 'assets/toys.jpeg',
        'text': 'Toys and Games',
        'onTap': () {},
      },
      {
        'image': 'assets/baby.jpeg',
        'text': 'Baby Products',
        'onTap': () {},
      },
      {
        'image': 'assets/pets.jpeg',
        'text': 'Pet Supplies',
        'onTap': () {},
      },
      {
        'image': 'assets/books.jpeg',
        'text': 'Books',
        'onTap': () {},
      },
      {
        'image': 'assets/stationery.jpeg',
        'text': 'Stationery',
        'onTap': () {},
      },
      {
        'image': 'assets/music.jpeg',
        'text': 'Music',
        'onTap': () {},
      },
      {
        'image': 'assets/movies.jpeg',
        'text': 'Movies and DVDs',
        'onTap': () {},
      },
      {
        'image': 'assets/games.jpeg',
        'text': 'Video Games',
        'onTap': () {},
      },
      {
        'image': 'assets/sunglasses.jpeg',
        'text': 'Sunglasses',
        'onTap': () {},
      },
      {
        'image': 'assets/footwear.jpeg',
        'text': 'Footwear',
        'onTap': () {},
      },
      {
        'image': 'assets/wallets.jpeg',
        'text': 'Wallets',
        'onTap': () {},
      },
      {
        'image': 'assets/fragrance.jpeg',
        'text': 'Fragrance',
        'onTap': () {},
      },
      {
        'image': 'assets/gadgets.jpeg',
        'text': 'Gadgets',
        'onTap': () {},
      },
      {
        'image': 'assets/health.jpeg',
        'text': 'Health and Wellness',
        'onTap': () {},
      },
      {
        'image': 'assets/fitness_clothing.jpeg',
        'text': 'Fitness Clothing',
        'onTap': () {},
      },
      {
        'image': 'assets/underwear.jpeg',
        'text': 'Underwear',
        'onTap': () {},
      },
      {
        'image': 'assets/socks.jpeg',
        'text': 'Socks',
        'onTap': () {},
      },
      {
        'image': 'assets/scarves.jpeg',
        'text': 'Scarves',
        'onTap': () {},
      },
      {
        'image': 'assets/gloves.jpeg',
        'text': 'Gloves',
        'onTap': () {},
      },
      // Add more categories here.
    ];
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'Categories',
        implyleading: false,
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
          // Expanded(
          //     child: ListView(
          //   children: [
          //     CategoryCard(
          //       yourimage: 'assets/sports.jpg',
          //       categorytext: 'Sports Equipments',
          //       ontap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (BuildContext context) {
          //           return const MyOrders();
          //         }));
          //       },
          //     ),
          //     CategoryCard(
          //       yourimage: 'assets/techcategory.jpg',
          //       categorytext: 'Technology',
          //       ontap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (BuildContext context) {
          //           return const MyOrders();
          //         }));
          //       },
          //     ),
          //     CategoryCard(
          //       yourimage: 'assets/gaming.jpeg',
          //       categorytext: "Gaming PC's",
          //       ontap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (BuildContext context) {
          //           return const MyOrders();
          //         }));
          //       },
          //     ),
          //     CategoryCard(
          //       yourimage: 'assets/fashion.jpeg',
          //       categorytext: 'Fahion Items',
          //       ontap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (BuildContext context) {
          //           return const MyOrders();
          //         }));
          //       },
          //     ),
          //     CategoryCard(
          //       yourimage: 'assets/fashion.jpeg',
          //       categorytext: 'Fahion Items',
          //       ontap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (BuildContext context) {
          //           return const MyOrders();
          //         }));
          //       },
          //     ),
          //   ],
          // )),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: categories[index]['onTap'],
                  child: CategoryCard(
                    yourimage: categories[index]['image'],
                    categorytext: categories[index]['text'],
                    ontap: () {},
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
