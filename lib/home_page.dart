import 'package:bmi_calculator/bmi_calculation.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_card.dart';
import 'home_card_age.dart';
import 'home_card_weight.dart';
import 'home_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        kMaleTapped = !kMaleTapped;
                        kFemaleTapped = !kFemaleTapped;
                      });
                    },
                    child: HomeCard(
                      kMaleTapped
                          ? kHomeCardColor
                          : kGenderContainerInactiveColor,
                      HomeCardWidget(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          kFemaleTapped = !kFemaleTapped;
                          kMaleTapped = !kMaleTapped;
                        },
                      );
                    },
                    child: HomeCard(
                      kFemaleTapped
                          ? kHomeCardColor
                          : kGenderContainerInactiveColor,
                      HomeCardWidget(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: HomeCard(
              kHomeCardColor,
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            kHeight.floor().toString(),
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'cm',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.red,
                    inactiveColor: Colors.white54,
                    max: 200.0,
                    min: 100.0,
                    onChanged: (value) {
                      setState(() {
                        kHeight = value;
                      });
                    },
                    value: kHeight,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: HomeCard(
                    kHomeCardColor,
                    HomeCardWeight(),
                  ),
                ),
                Expanded(
                  child: HomeCard(
                    kHomeCardColor,
                    HomeCardAge(),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMICalculation calc = BMICalculation(
                weight: kWeight,
                height: kHeight.floor(),
              );
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BMIResult(
                    result: calc.bmiResult(),
                    suggestion: calc.suggestion(),
                    comment: calc.comment(),
                  ),
                ),
              );
              print(calc.comment());
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(top: 15),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Text(
                'Calculate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
