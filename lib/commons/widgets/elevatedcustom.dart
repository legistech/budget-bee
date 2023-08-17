import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  ///This is my default style for round button
  final String title;
  final VoidCallback onTap;
  const RoundButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Container(
            //padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFF185951),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
