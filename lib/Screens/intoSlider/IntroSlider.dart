import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import '../mainPage/mainPage.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<ContentConfig> slides = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    slides.add(ContentConfig(
        title: 'Recipes around the world',
        styleTitle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white

        ),
        description:
            'Travel around the world without leaving your kitchen with these international recipes. From Canada to Australia,Nigeria to Brazil—and everywhere in between.',
        pathImage: 'assets/images/bibimbap.png',
        backgroundColor: Color.fromARGB(237, 228, 169, 255)));
    slides.add(ContentConfig(
        title: 'Enjoy your meal',
        // description:
        // 'Travel around the world without leaving your kitchen with these international recipes. From Canada to Australia,Nigeria to Brazil—and everywhere in between.',
        pathImage: 'assets/images/food.png',
        backgroundColor: Color.fromARGB(237, 228, 169, 255)));
  }

  void onDonePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
      return Mainpage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      isShowSkipBtn: false,
      key: UniqueKey(),
      listContentConfig: slides,
      onDonePress: () {
        setState(() {
          onDonePressed();
        });
      },
    );
  }
}
