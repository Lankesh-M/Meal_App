import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/data/dumy_data.dart';

final mealProvider = Provider((ref) => dummyMeals);
