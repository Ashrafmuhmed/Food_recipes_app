import 'package:flutter/material.dart';
import 'package:food_recipes_app/Models/Country.dart';
import 'package:food_recipes_app/Models/Meal.dart';
import 'package:food_recipes_app/Screens/foodDisplay/displayMeals.dart';
import 'package:food_recipes_app/Services/urlLauncherService.dart';

import '../Screens/foodDisplay/diplayPage.dart';

class Mealcard extends StatelessWidget {
  Meal meal;
  Mealcard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return meal == null
        ? Container()
        : GestureDetector(
            onTap: () {
              Urllauncherservice(link: meal.instruc).LaunchUrl();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(meal!.image), fit: BoxFit.fill)),
                width: 173,
                height: 110,
                child: Container(
                  color: Color.fromARGB(102, 0, 0, 0),
                  child: Center(
                    child: Text(
                      meal!.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Lalezar'),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          );
  }
}
