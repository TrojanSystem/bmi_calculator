import 'package:flutter/material.dart';
class HomeCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  HomeCardWidget(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}