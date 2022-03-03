import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class HomeCardWeight extends StatefulWidget {
  @override
  State<HomeCardWeight> createState() => _HomeCardWeightState();
}

class _HomeCardWeightState extends State<HomeCardWeight> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Weight',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              kWeight.toString(),
              style: kNumberStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "btn3",
              onPressed: () {
                setState(() {
                  kWeight++;
                });
              },
              child: const Icon(
                FontAwesomeIcons.plus,
              ),
              backgroundColor: kGenderContainerInactiveColor,
              elevation: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: "btn4",
              onPressed: () {
                setState(() {
                  kWeight--;
                });
              },
              child: const Icon(
                FontAwesomeIcons.minus,
              ),
              backgroundColor: kGenderContainerInactiveColor,
              elevation: 30,
            ),
          ],
        ),
      ],
    );
  }
}
