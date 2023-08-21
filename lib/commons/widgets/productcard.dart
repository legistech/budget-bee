import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      height: 250,
      width: 180,
      child: Card(
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: 170,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Rs. ',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    priceofproduct,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Add to card')),
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.heart))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
