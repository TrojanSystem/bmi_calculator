import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Color? colors;
  final Widget? homeCardWidget;

  HomeCard(this.colors, [this.homeCardWidget]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: homeCardWidget,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}