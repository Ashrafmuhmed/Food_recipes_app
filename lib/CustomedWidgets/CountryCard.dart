import 'package:flutter/material.dart';
import 'package:food_recipes_app/Models/Country.dart';
import 'package:food_recipes_app/Screens/foodDisplay/displayMeals.dart';

import '../Screens/foodDisplay/diplayPage.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return country == null
        ? Container()
        : GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return Diplaypage(country: country);
              }
              )
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(country!.image), fit: BoxFit.fill)),
                width: 173,
                height: 110,
                child: Container(
                  color: const Color.fromARGB(68, 0, 0, 0),
                  child: Text(
                    country!.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Lalezar'),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          );
  }
}
