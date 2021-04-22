import 'package:flutter/material.dart';
import 'package:meals_flutter_app/dummy_data.dart';
import 'package:meals_flutter_app/widgets/category_meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category-meals';
  // final String categoryId;
  // final String categoryName;
  // CategoryMealsScreen(this.categoryId, this.categoryName);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryName = routeArgs['title'];

    final mealsInCategory = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              title: mealsInCategory[index].title,
              duration: mealsInCategory[index].duration,
              complexity: mealsInCategory[index].complexity,
              affordability: mealsInCategory[index].affordability,
              imageUrl: mealsInCategory[index].imageUrl,
              id: mealsInCategory[index].id,
            );
          },
          itemCount: mealsInCategory.length,
        ));
  }
}
