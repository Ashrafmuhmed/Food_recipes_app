import 'package:flutter/material.dart';
import 'Screens/intoSlider/IntroSlider.dart';

class Stratapp extends StatelessWidget {
  const Stratapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
