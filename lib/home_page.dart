import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: HomeCard(
                    homeCardColor,
                      HomeCardWidget(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: HomeCard(
                    homeCardColor,
                    HomeCardWidget(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: HomeCard(
              homeCardColor,
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            height.floor().toString(),
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  Slider(activeColor: Colors.red,inactiveColor: Colors.white54,
                    max: 200.0,
                    min: 100.0,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                    value: height,
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
                      homeCardColor,
                  ),
                ),
                Expanded(
                  child: HomeCard(
                    homeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
           height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

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
