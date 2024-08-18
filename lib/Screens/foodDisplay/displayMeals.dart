import 'package:flutter/material.dart';
import 'package:food_recipes_app/CustomedWidgets/mealCard.dart';
import 'package:food_recipes_app/Models/Country.dart';
import 'package:food_recipes_app/Models/Meal.dart';
import 'package:food_recipes_app/Services/MealsFetchService.dart';

class Displaymeals extends StatefulWidget {
  final Country country;

  const Displaymeals({super.key, required this.country});

  @override
  State<Displaymeals> createState() => _DisplaymealsState();
}

class _DisplaymealsState extends State<Displaymeals> {
  var res;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    res = Mealsfetchservice().getMeals(widget.country.search) ;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Meal>>(
        future: res,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
                child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ));
          } else if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.2),
              itemBuilder: (context, index) {
                return Mealcard(meal: snapshot.data![index]);
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return const Text('Oops error happened try agan later.....');
          }
        });
  }
}

// class Displaymeals extends StatefulWidget {
//   final Country country;
//   const Displaymeals({super.key , required this.country});
//   @override
//   State<Displaymeals> createState() => _DisplaymealsState();
// }

// class _DisplaymealsState extends State<Displaymeals> {
//   List<Meal> meals = [];
//   bool isLoading = true;
//   Future<void> getMeals_() async {
//     meals = await ;
//     setState(() {});
//     isLoading = false;
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getMeals_();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? Center(
//             child: CircularProgressIndicator(
//               color: const Color.fromARGB(255, 255, 255, 255),
//             ),
//           )
//         : GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 15,
//                 mainAxisSpacing: 15,
//                 childAspectRatio: 1.2),
//             itemBuilder: (context, index) {
//               return Mealcard(meal: meals[index]);
//             },
//             itemCount: meals.length,
//           );
//   }
// }
