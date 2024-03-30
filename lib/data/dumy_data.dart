import 'package:flutter/material.dart';

import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];

//Below is Inidan meal and categories

// Constants in Dart should be written in lowerCamelcase.
// const availableCategories = [
//   Category(
//     id: 'c1',
//     title: 'North Indian',
//     color: Colors.purple,
//   ),
//   Category(
//     id: 'c2',
//     title: 'South Indian',
//     color: Colors.red,
//   ),
//   Category(
//     id: 'c3',
//     title: 'Snacks',
//     color: Colors.orange,
//   ),
//   Category(
//     id: 'c4',
//     title: 'Desserts',
//     color: Colors.amber,
//   ),
// ];

// const dummyMeals = [
//   // Existing meals...
//   Meal(
//     id: 'm1',
//     categories: [
//       'c1',
//       'c2',
//     ],
//     title: 'Paneer Butter Masala',
//     affordability: Affordability.affordable,
//     complexity: Complexity.simple,
//     imageUrl:
//         'https://imgs.search.brave.com/uamSx6sNuzB5mjUCJyh5cjCBtDLOSEZCgt4XkxIZzT8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9oZWJi/YXJza2l0Y2hlbi5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MjEvMDQvcGFuZWVy/LWJ1dHRlci1tYXNh/bGEtcmVjaXBlLWJ1/dHRlci1wYW5lZXIt/cmVjaXBlLWNoZWVz/ZS1idXR0ZXItbWFz/YWxhLTEtMTAyNHg2/ODMuanBlZw',
//     duration: 30,
//     ingredients: [
//       '200g Paneer',
//       '2 Onions',
//       '3 Tomatoes',
//       '1 inch Ginger',
//       '4 cloves Garlic',
//       '1/4 cup Cashews',
//       '1/4 cup Fresh Cream',
//       '1 tsp Red Chili Powder',
//       '1 tsp Garam Masala',
//       '1/2 tsp Turmeric Powder',
//       'Salt to taste',
//       '2 tbsp Butter',
//       '2 tbsp Oil',
//       'Coriander leaves for garnishing',
//     ],
//     steps: [
//       'Heat oil in a pan, add chopped onions, ginger, and garlic. Saute until golden brown.',
//       'Add chopped tomatoes and cashews. Cook until tomatoes are soft.',
//       'Let it cool down, then blend into a smooth paste.',
//       'Heat butter in a pan, add the prepared paste and cook for 2 minutes.',
//       'Add red chili powder, turmeric powder, and salt. Mix well.',
//       'Add paneer cubes and cook for 5 minutes.',
//       'Add fresh cream and garam masala. Mix well and cook for another 2 minutes.',
//       'Garnish with chopped coriander leaves and serve hot with naan or rice.',
//     ],
//     isGlutenFree: true,
//     isVegan: false,
//     isVegetarian: true,
//     isLactoseFree: false,
//   ),
//   Meal(
//     id: 'm2',
//     categories: [
//       'c3',
//     ],
//     title: 'Vegetable Pakora',
//     affordability: Affordability.affordable,
//     complexity: Complexity.simple,
//     imageUrl:
//         'https://imgs.search.brave.com/AytCadpAwMrEqxh0ShFPZlHA8MTKjhpg-ocNrbbIdNs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdWto/aXMuY29tL2FwcC91/cGxvYWRzLzIwMTMv/MDMvaW1hZ2UxLTEw/MjR4Njg0LmpwZw',
//     duration: 25,
//     ingredients: [
//       '1 cup Chickpea Flour (Besan)',
//       '1 Onion, thinly sliced',
//       '1 Potato, thinly sliced',
//       '1/2 cup Spinach leaves, chopped',
//       '1/4 cup Cauliflower florets',
//       '1/4 cup Bell pepper, thinly sliced',
//       '2 Green chilies, finely chopped',
//       '1 tsp Ginger Garlic paste',
//       '1/2 tsp Turmeric powder',
//       '1 tsp Red Chili powder',
//       '1 tsp Garam Masala',
//       'Salt to taste',
//       'Water as required',
//       'Oil for deep frying',
//     ],
//     steps: [
//       'In a bowl, mix chickpea flour, turmeric powder, red chili powder, garam masala, salt, and ginger-garlic paste.',
//       'Add water gradually to make a thick batter. It should be of dropping consistency.',
//       'Add sliced onions, potatoes, spinach, cauliflower, bell pepper, and green chilies to the batter. Mix well.',
//       'Heat oil in a deep pan. Drop spoonfuls of the batter into the hot oil and fry until golden brown and crispy.',
//       'Remove from oil and drain excess oil on a paper towel.',
//       'Serve hot with mint chutney or tomato ketchup.',
//     ],
//     isGlutenFree: true,
//     isVegan: true,
//     isVegetarian: true,
//     isLactoseFree: true,
//   ),
//   Meal(
//     id: 'm11',
//     categories: [
//       'c1',
//     ],
//     title: 'Palak Paneer',
//     affordability: Affordability.affordable,
//     complexity: Complexity.simple,
//     imageUrl:
//         'https://imgs.search.brave.com/6YVkUB_f74AF2ijo57X1AEwZqJTkD8vksClUJqtytPU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM5/NjMwNzI1NC9waG90/by9wYWxhay1wYW5l/ZXItYW5kLXRhbmRv/b3JpLXJvdGkuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPVVJ/ME1SWG9IQ1M0S3VB/Q0IydmNMemFtRndK/MWxrUUpBYmhIcjJF/aVRSU289',
//     duration: 40,
//     ingredients: [
//       '200g Paneer',
//       '4 cups Spinach (Palak)',
//       '1 Onion, chopped',
//       '2 Tomatoes, chopped',
//       '1 Green Chili',
//       '1 inch Ginger',
//       '3 cloves Garlic',
//       '1/2 tsp Cumin Seeds',
//       '1/2 tsp Turmeric Powder',
//       '1 tsp Red Chili Powder',
//       '1 tsp Coriander Powder',
//       '1/2 tsp Garam Masala',
//       '2 tbsp Fresh Cream',
//       '2 tbsp Oil',
//       'Salt to taste',
//     ],
//     steps: [
//       'Blanch spinach leaves in hot water for 2 minutes. Drain and transfer to ice water. Blend to a smooth paste.',
//       'Heat oil in a pan, add cumin seeds, chopped onions, green chili, ginger, and garlic. Saute until onions are golden brown.',
//       'Add chopped tomatoes and cook until they turn mushy.',
//       'Add turmeric powder, red chili powder, coriander powder, and salt. Mix well.',
//       'Add spinach puree and cook for 5 minutes.',
//       'Add paneer cubes and cook for another 5 minutes.',
//       'Add fresh cream and garam masala. Mix well and cook for 2 minutes.',
//       'Serve hot with naan or rice.',
//     ],
//     isGlutenFree: true,
//     isVegan: false,
//     isVegetarian: true,
//     isLactoseFree: false,
//   ),
//   Meal(
//     id: 'm12',
//     categories: [
//       'c2',
//     ],
//     title: 'Masala Dosa',
//     affordability: Affordability.affordable,
//     complexity: Complexity.simple,
//     imageUrl:
//         'https://imgs.search.brave.com/7JjT0u8gyo93IOLCse4hI0Uq_6gg_cfCjwWlN2tsL-U/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9oZWJi/YXJza2l0Y2hlbi5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMDcvbWFzYWxh/LWRvc2EtcmVjaXBl/LWNyaXNweS1tYXNh/bGUtZG9zZS1ob3ct/dG8tbWFrZS1tYXNh/bGEtZG9zYS0xLTEw/MjR4NjgyLmpwZWc',
//     duration: 45,
//     ingredients: [
//       '2 cups Dosa Batter',
//       '2 Potatoes, boiled and mashed',
//       '1 Onion, chopped',
//       '2 Green Chilies, chopped',
//       '1/2 inch Ginger, grated',
//       '1/2 tsp Mustard Seeds',
//       '1/2 tsp Cumin Seeds',
//       '1/4 tsp Asafoetida (Hing)',
//       '8-10 Curry Leaves',
//       '1/2 tsp Turmeric Powder',
//       '2 tbsp Coriander Leaves, chopped',
//       '2 tbsp Oil',
//       'Salt to taste',
//     ],
//     steps: [
//       'Heat oil in a pan, add mustard seeds, cumin seeds, asafoetida, and curry leaves. Let them splutter.',
//       'Add chopped onions, green chilies, and grated ginger. Saute until onions turn translucent.',
//       'Add turmeric powder and mashed potatoes. Mix well and cook for 2 minutes.',
//       'Add salt and chopped coriander leaves. Mix well and remove from heat.',
//       'Heat a non-stick pan, pour a ladleful of dosa batter and spread it in a circular motion to make a thin dosa.',
//       'Drizzle oil around the edges and cook until golden brown.',
//       'Place a portion of the potato filling in the center of the dosa and fold it.',
//       'Serve hot with coconut chutney and sambar.',
//     ],
//     isGlutenFree: true,
//     isVegan: true,
//     isVegetarian: true,
//     isLactoseFree: true,
//   ),
//   Meal(
//     id: 'm13',
//     categories: [
//       'c3',
//     ],
//     title: 'Samosa',
//     affordability: Affordability.affordable,
//     complexity: Complexity.challenging,
//     imageUrl:
//         'https://imgs.search.brave.com/_uBKgz-fTB7ebDF37VPCByA7ppjZI5UGBS3njR6FOj0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA3LzAzLzI0LzU4/LzM2MF9GXzcwMzI0/NTgxN19rNUVCaTVN/MVpYcXQ2YUdnUVl2/ZGF5Um8yUDFFa0x6/Ri5qcGc',
//     duration: 60,
//     ingredients: [
//       'For the Dough:',
//       '2 cups All-Purpose Flour',
//       '1/4 cup Ghee (Clarified Butter)',
//       '1/2 tsp Salt',
//       'Water as required',
//       'For the Filling:',
//       '4 Potatoes, boiled and mashed',
//       '1 cup Peas',
//       '1 Onion, chopped',
//       '2 Green Chilies, chopped',
//       '1 inch Ginger, grated',
//       '1/2 tsp Cumin Seeds',
//       '1/2 tsp Coriander Seeds',
//       '1/2 tsp Garam Masala',
//       '1/2 tsp Chaat Masala',
//       '1/4 tsp Turmeric Powder',
//       '2 tbsp Coriander Leaves, chopped',
//       'Salt to taste',
//       'Oil for frying',
//     ],
//     steps: [
//       'In a bowl, mix all-purpose flour, ghee, and salt. Knead into a stiff dough using water. Cover and let it rest for 30 minutes.',
//       'Heat oil in a pan, add cumin seeds, coriander seeds, chopped onions, green chilies, and grated ginger. Saute until onions turn translucent.',
//       'Add boiled and mashed potatoes, peas, turmeric powder, garam masala, chaat masala, and salt. Mix well and cook for 5 minutes.',
//       'Add chopped coriander leaves and remove from heat. Let the filling cool down.',
//       'Divide the dough into small balls. Roll each ball into a small circle.',
//       'Cut each circle in half. Form a cone shape by sealing the edges of the semicircle with water.',
//       'Fill the cone with potato filling and seal the open edge by pressing gently.',
//       'Heat oil in a pan, deep fry the samosas until golden brown and crispy.',
//       'Serve hot with mint chutney or tamarind chutney.',
//     ],
//     isGlutenFree: false,
//     isVegan: true,
//     isVegetarian: true,
//     isLactoseFree: true,
//   ),
//   // Add more Indian meals here...
// ];
