import 'package:flutter/material.dart';
import 'mainRow.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: mainCategBuilder(),
      ),
    );
  }
}






// fetch('https://www.themealdb.com/api/json/v1/1/filter.php?a=Egyptian')
//   .then(response => response.json())
//   .then(data => {
//     const mealIds = data.meals.map(meal => meal.idMeal);
//     mealIds.forEach(id => {
//       fetch(`https://www.themealdb.com/api/json/v1/1/lookup.php?i=${id}`)
//         .then(response => response.json())
//         .then(mealData => {
//           const meal = mealData.meals[0];
//           console.log(`Meal: ${meal.strMeal}`);
//           console.log('Ingredients:');
//           for (let i = 1; i <= 20; i++) {
//             const ingredient = meal[`strIngredient${i}`];
//             const measure = meal[`strMeasure${i}`];
//             if (ingredient) {
//               console.log(`${ingredient} - ${measure}`);
//             }
//           }
//         })
//         .catch(error => console.error('Error:', error));
//     });
//   })
//   .catch(error => console.error('Error:', error));
