import 'package:budgetbee/Features/productscreen/productscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  final String priceofproduct;
  final String productname;
  final imagepath;
  const ProductCard({
    required this.imagepath,
    required this.productname,
    required this.priceofproduct,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 185,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return const ProductScreen();
          }));
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: 190,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Image.asset(
                      imagepath, // Replace with the URL of your image
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('⭐4.5'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productname,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Rs. ',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      NumberFormat.currency(
                        symbol:
                            '', // You can customize the currency symbol if needed
                        decimalDigits:
                            0, // You can adjust the number of decimal digits
                      ).format(int.parse(
                          priceofproduct)), // Assuming priceofproduct is a String
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add to cart'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.heart),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
