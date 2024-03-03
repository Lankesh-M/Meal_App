import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item_trait.dart';

class MealItem extends StatelessWidget {
  const MealItem(
      {super.key, required this.meal, required this.onSelectMealItem});

  final Meal meal;
  final void Function(Meal meal) onSelectMealItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 3,
      child: InkWell(
        onTap: () {
          onSelectMealItem(meal);
        }, //meal_deatil_screen
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                color: Colors.black54,
                child: Column(children: [
                  Text(
                    meal.title,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow:
                        TextOverflow.ellipsis, // Cut the long text like this...
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MealItemTrait(
                          icon: Icons.schedule, label: '${meal.duration} Min'),
                      const SizedBox(
                        width: 10,
                      ),
                      MealItemTrait(
                          icon: Icons.work,
                          label:
                              '${meal.complexity.name[0].toUpperCase()}${meal.complexity.name.substring(1)}'),
                      const SizedBox(
                        width: 10,
                      ),
                      MealItemTrait(
                          icon: Icons.currency_rupee,
                          label:
                              '${meal.affordability.name[0].toUpperCase()}${meal.affordability.name.substring(1)}'),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
