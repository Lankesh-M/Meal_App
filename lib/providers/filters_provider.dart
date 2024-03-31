import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  lactoseFree,
  glutenFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegan: false,
          Filter.vegetarian: false,
        });
}

final filtersProvider = StateNotifierProvider((ref) => null);
