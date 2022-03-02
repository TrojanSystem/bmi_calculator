import 'package:flutter/material.dart';

bool kMaleTapped = false;
bool kFemaleTapped = true;
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kHomeCardColor = Color(0xFF1D1E33);
const kGenderContainerInactiveColor = Color(0xFF111328);
double kHeight = 100;
int kAge = 18;
int kWeight = 40;
Gender? kSelectedGender;
enum Gender { male, female }

ThemeData kTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0XFF0A0E21),
  primaryColor: const Color(0XFF0A0E21),
  cardColor: const Color(0xFF1D1E33),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
  ),
  sliderTheme: const SliderThemeData(
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 15,
    ),
  ),
);
