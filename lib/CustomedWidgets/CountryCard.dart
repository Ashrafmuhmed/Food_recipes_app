import 'package:flutter/material.dart';
import 'package:food_recipes_app/Models/Country.dart';

import '../Screens/foodDisplay/diplayPage.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
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
                        image: AssetImage(country.image), fit: BoxFit.fill)),
                width: 173,
                height: 110,
                child: Container(
                  color: const Color.fromARGB(68, 0, 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    country.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Lalezar'),
                  ),
                ),
              ),
            ),
          );
  }
}
