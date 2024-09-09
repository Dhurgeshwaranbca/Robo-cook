import 'package:flutter/material.dart';
class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  List<ItemModel> items;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.items,
  });

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
        name: "Salads",
        iconPath: 'assets/icons/plate.svg',
        boxColor: const Color.fromARGB(255, 7, 217, 250),
        items: [
          ItemModel(
            name: "Greek Salad",
            ingredients: ["Tomatoes", "Cucumbers", "Feta cheese", "Olives"],
            instructions: "Mix all ingredients in a bowl. Add olive oil and salt to taste.",
            itemIconPath: 'assets/icons/Greek Salad.jpeg',
            referenceUrl: "https://www.example.com/greek-salad-recipe",
          ),
          ItemModel(
            name: "Caesar Salad",
            ingredients: ["Romaine lettuce", "Croutons", "Parmesan cheese", "Caesar dressing"],
            instructions: "Toss lettuce, croutons, and Parmesan with Caesar dressing.",
            itemIconPath: 'assets/icons/Caesar Salad.jpeg',
            referenceUrl: "https://www.example.com/caesar-salad-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Pies",
        iconPath: 'assets/icons/pie.svg',
        boxColor: const Color.fromARGB(255, 68, 250, 7),
        items: [
          ItemModel(
            name: "Apple Pie",
            ingredients: ["Apples", "Sugar", "Cinnamon", "Pie Crust"],
            instructions: "Peel and slice apples. Mix with sugar and cinnamon. Place in pie crust and bake at 180°C for 45 minutes.",
             itemIconPath: 'assets/icons/Apple Pie.jpeg',
            referenceUrl: "https://www.example.com/apple-pie-recipe",
          ),
          ItemModel(
            name: "Pumpkin Pie",
            ingredients: ["Pumpkin puree", "Evaporated milk", "Sugar", "Pie Crust"],
            instructions: "Mix pumpkin puree, evaporated milk, and sugar. Pour into pie crust and bake at 180°C for 50 minutes.",
             itemIconPath: 'assets/icons/Pumpkin Pie.jpeg',
            referenceUrl: "https://www.example.com/pumpkin-pie-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Seafood",
        iconPath: 'assets/icons/salmon-nigiri.svg',
        boxColor: const Color.fromARGB(255, 201, 7, 250),
        items: [
          ItemModel(
            name: "Grilled Salmon",
            ingredients: ["Salmon fillets", "Lemon", "Olive oil", "Garlic"],
            instructions: "Brush salmon with olive oil and lemon. Grill for 4-5 minutes on each side.",
            itemIconPath: 'assets/icons/Grilled Salmon.jpeg',
            referenceUrl: "https://www.example.com/grilled-salmon-recipe",
          ),
          ItemModel(
            name: "Shrimp Scampi",
            ingredients: ["Shrimp", "Garlic", "Butter", "White wine", "Lemon"],
            instructions: "Sauté garlic in butter, add shrimp, and cook until pink. Add white wine and lemon juice. Simmer for 3-4 minutes.",
            itemIconPath: 'assets/icons/Shrimp Scampi.jpeg',
            referenceUrl: "https://www.example.com/shrimp-scampi-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Pasta",
        iconPath: 'assets/icons/pasta.jpg',
        boxColor: const Color.fromARGB(255, 255, 200, 0),
        items: [
          ItemModel(
            name: "Spaghetti Carbonara",
            ingredients: ["Spaghetti", "Eggs", "Parmesan cheese", "Bacon"],
            instructions: "Cook spaghetti. In a bowl, mix eggs and Parmesan. Toss hot pasta with egg mixture and bacon.",
            itemIconPath: 'assets/icons/Spaghetti Carbonara.jpeg',
            referenceUrl: "https://www.example.com/spaghetti-carbonara-recipe",
          ),
          ItemModel(
            name: "Pesto Pasta",
            ingredients: ["Pasta", "Basil", "Pine nuts", "Garlic", "Olive oil", "Parmesan cheese"],
            instructions: "Blend basil, pine nuts, garlic, and olive oil into a paste. Toss with cooked pasta and Parmesan.",
            itemIconPath: 'assets/icons/Pesto Pasta.jpeg',
            referenceUrl: "https://www.example.com/pesto-pasta-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Sushi",
        iconPath: 'assets/icons/sushi.jpeg',
        boxColor: const Color.fromARGB(255, 0, 150, 136),
        items: [
          ItemModel(
            name: "California Roll",
            ingredients: ["Sushi rice", "Nori", "Crab sticks", "Avocado", "Cucumber"],
            instructions: "Place nori on a mat, spread rice, add crab, avocado, and cucumber. Roll tightly and slice.",
            itemIconPath: 'assets/icons/California Roll.jpeg',
            referenceUrl: "https://www.example.com/california-roll-recipe",
          ),
          ItemModel(
            name: "Spicy Tuna Roll",
            ingredients: ["Sushi rice", "Nori", "Tuna", "Sriracha", "Mayonnaise"],
            instructions: "Mix tuna with sriracha and mayonnaise. Roll in nori with rice and slice.",
            itemIconPath: 'assets/icons/Spicy Tuna Roll.jpeg',
            referenceUrl: "https://www.example.com/spicy-tuna-roll-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Burgers",
        iconPath: 'assets/icons/burger.jpeg',
        boxColor: const Color.fromARGB(255, 255, 87, 34),
        items: [
          ItemModel(
            name: "Classic Beef Burger",
            ingredients: ["Ground beef", "Burger buns", "Lettuce", "Tomato", "Cheese"],
            instructions: "Shape ground beef into patties. Grill and serve on buns with lettuce, tomato, and cheese.",
            itemIconPath: 'assets/icons/Veggie Burger.jpeg',
            referenceUrl: "https://www.example.com/classic-beef-burger-recipe",
          ),
          ItemModel(
            name: "Veggie Burger",
            ingredients: ["Black beans", "Bread crumbs", "Onion", "Garlic", "Burger buns"],
            instructions: "Mash black beans, mix with bread crumbs, onion, and garlic. Shape into patties and cook.",
            itemIconPath: 'assets/icons/Veggie Burger.jpeg',
            referenceUrl: "https://www.example.com/veggie-burger-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Desserts",
        iconPath: 'assets/icons/dessert.jpeg',
        boxColor: const Color.fromARGB(255, 255, 64, 129),
        items: [
          ItemModel(
            name: "Chocolate Cake",
            ingredients: ["Flour", "Cocoa powder", "Sugar", "Eggs", "Butter"],
            instructions: "Mix dry ingredients, add eggs and butter. Pour into a pan and bake at 180°C for 30 minutes.",
            itemIconPath: 'assets/icons/Chocolate Cake.jpeg',
            referenceUrl: "https://www.example.com/chocolate-cake-recipe",
          ),
          ItemModel(
            name: "Cheesecake",
            ingredients: ["Cream cheese", "Sugar", "Eggs", "Graham cracker crust"],
            instructions: "Beat cream cheese and sugar, add eggs. Pour into crust and bake at 160°C for 60 minutes.",
            itemIconPath: 'assets/icons/Chocolate Cake.jpeg',
            referenceUrl: "https://www.example.com/cheesecake-recipe",
          ),
        ],
      ),
      CategoryModel(
        name: "Drinks",
        iconPath: 'assets/icons/drinks.jpeg',
        boxColor: const Color.fromARGB(255, 33, 150, 243),
        items: [
          ItemModel(
            name: "Mojito",
            ingredients: ["Mint leaves", "Lime", "Sugar", "White rum", "Soda water"],
            instructions: "Muddle mint and lime, add sugar and rum. Top with soda water.",
            itemIconPath: 'assets/icons/Mojito.jpeg',
            referenceUrl: "https://www.example.com/mojito-recipe",
          ),
          ItemModel(
            name: "Pina Colada",
            ingredients: ["Pineapple juice", "Coconut cream", "White rum", "Ice"],
            instructions: "Blend pineapple juice, coconut cream, rum, and ice until smooth.",
            itemIconPath: 'assets/icons/Pina Colada.jpeg',
            referenceUrl: "https://www.example.com/pina-colada-recipe",
          ),
        ],
      ),
    ];
  }
}
class ItemModel {
  String name;
  List<String> ingredients;
  String instructions;
  String referenceUrl;
  String itemIconPath;

  ItemModel({
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.referenceUrl,
    required this.itemIconPath,
  });
}
