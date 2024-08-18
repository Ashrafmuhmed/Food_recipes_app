import 'package:flutter/material.dart';
import 'package:food_recipes_app/Models/Meal.dart';
import 'package:food_recipes_app/Services/urlLauncherService.dart';


class Mealcard extends StatelessWidget {
  final Meal meal;
  const Mealcard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () {
              Urllauncherservice(link: meal.instruc).LaunchUrl();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(meal.image), fit: BoxFit.fill)),
                width: 173,
                height: 110,
                child: Container(
                  color: const Color.fromARGB(102, 0, 0, 0),
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      meal.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Lalezar'),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
