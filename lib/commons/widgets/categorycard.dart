import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categorytext;
  final ontap;
  final yourimage;
  const CategoryCard({
    required this.ontap,
    required this.yourimage,
    required this.categorytext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 110,
                      child: Text(
                        categorytext,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(9)),
                      child: Image.asset(
                        yourimage,
                        fit: BoxFit.cover,
                        //width: 200,
                        height: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
