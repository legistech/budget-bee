import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String ButtonText;
  final OnPressed;
  const CustomTextButton({
    super.key,
    required this.ButtonText,
    required this.OnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: OnPressed,
        child: Text(
          ButtonText,
          selectionColor: const Color(0xFF6A50A7),
        ));
  }
}
