import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'Screens/intoSlider/IntroSlider.dart';

class Stratapp extends StatelessWidget {
  const Stratapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
