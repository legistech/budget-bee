import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String givetext;
  final String imageurl;
  const TrendingCard({
    super.key,
    required this.givetext,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: SizedBox(
        height: 100,
        width: 170,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // ColorFiltered(
              //     colorFilter: ColorFilter.mode(
              //         Colors.black.withOpacity(0.5), BlendMode.darken)),
              Image.asset(
                imageurl, // Replace with the URL of your image
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
              ),
              Container(
                color: Colors.black
                    .withOpacity(0.5), // Adjust opacity for darkness
              ),
              Center(
                child: Text(
                  givetext,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
