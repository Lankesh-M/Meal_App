import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/data/dumy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/providers/favorites_provider.dart';
import 'package:meal_app/providers/meal_provider.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/main_drawer.dart';

const kInitialFilters = {
  Filter.lactoseFree: false,
  Filter.glutenFree: false,
  Filter.vegan: false,
  Filter.vegetarian: false,
};

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});

  @override
  ConsumerState<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends ConsumerState<TabScreen> {
  int _selectedPageIndex = 0;
  Map<Filter, bool> _selectedFilter = kInitialFilters;

  // void _toggleFavoriteMealStatus(Meal meal) {
  //   final isExisting = _favoriteMeal.contains(meal);
  //   if (isExisting) {
  //     setState(() {
  //       _favoriteMeal.remove(meal);
  //       _showMessage("This meal is Removed from your Favorite...");
  //     });
  //   } else {
  //     setState(() {
  //       _favoriteMeal.add(meal);
  //       _showMessage("This meal is Added to your Favorite...");
  //     });
  //   }
  // }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectedFilter,
          ),
        ),
      );
      setState(() {
        _selectedFilter = result ?? kInitialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealProvider);
    final availableMeals = meals.where((meal) {
      if (_selectedFilter[Filter.glutenFree]! && meal.isGlutenFree) {
        return false;
      }
      if (_selectedFilter[Filter.lactoseFree]! && meal.isLactoseFree) {
        return false;
      }
      if (_selectedFilter[Filter.vegan]! && meal.isVegan) {
        return false;
      }
      if (_selectedFilter[Filter.vegetarian]! && meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      availableMeals: availableMeals,
    );
    var activePageTitle = "Categories";
    if (_selectedPageIndex == 1) {
      final favoriteMeal = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        meals: favoriteMeal,
      );
      activePageTitle = "Favorites";
    }

    return Scaffold(
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites")
        ],
      ),
    );
  }
}
