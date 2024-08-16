import 'package:flutter/material.dart';
import 'package:food_recipes_app/Models/Country.dart';
import 'package:food_recipes_app/Models/Meal.dart';
import 'package:food_recipes_app/Screens/foodDisplay/displayMeals.dart';

class Diplaypage extends StatelessWidget {
  final Country country;
  const Diplaypage({super.key,required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 186, 223, 138),
        centerTitle: true,
        title: Text(
          country.name,
          style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontFamily: 'Lalezar'),
        ),
      ),
      body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 186, 223, 138),
                  Color.fromARGB(255, 159, 131, 194)
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  9.0),
            child: Displaymeals(country: country),
          )),
    );
  }
}
