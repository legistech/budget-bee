import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final ontap;
  const ProfileTile({
    required this.title,
    required this.subtitle,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: ontap,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.navigate_next));
  }
}
