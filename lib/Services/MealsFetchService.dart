import 'package:dio/dio.dart';
import 'package:food_recipes_app/Models/Meal.dart';

class Mealsfetchservice {
  Future<List<Meal>> getMeals(String search) async {
    try {
      List<Meal> finalMeals = [];
      Response res = await Dio()
          .get('https://www.themealdb.com/api/json/v1/1/filter.php?a=${search}');
      Map<dynamic, dynamic> meals = res.data;
      List<dynamic> data = await meals['meals'];
      for (dynamic meal in data) {
        Response tempRes = await Dio().get(
            'https://www.themealdb.com/api/json/v1/1/lookup.php?i=${meal['idMeal']}');
        Map<dynamic, dynamic> mealsxx = tempRes.data;
      List<dynamic> dataxx = await mealsxx['meals'];
        finalMeals.add(Meal(
            name: meal['strMeal'],
            image: meal['strMealThumb'],
            instruc: dataxx[0]['strYoutube']));
      }
      return finalMeals;
    } catch (e) {
      return [];
    }
  }
}
