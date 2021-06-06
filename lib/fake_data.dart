import 'package:flutter/material.dart';
import 'category.dart';
import 'food.dart';

const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.cyanAccent),
  Category(id: 4, content: 'VietNam\'s Foods', color: Colors.deepOrange),
  Category(id: 5, content: 'Korean\'s Food', color: Colors.teal),
  Category(id: 6, content: 'Thailand\'s Food', color: Colors.cyanAccent),
  Category(id: 7, content: 'Italy\'s Foods', color: Colors.deepOrange),
  Category(id: 8, content: 'France\'s Food', color: Colors.teal),
  Category(id: 9, content: 'China\'s Food', color: Colors.cyanAccent),
  Category(id: 10, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 11, content: 'Pizza', color: Colors.teal),
  Category(id: 12, content: 'Humburgers', color: Colors.cyanAccent),
];

var FAKE_FOOD = [
  Food(
      name: "Pho",
      urlImage:
          "https://i-vnexpress.vnecdn.net/2020/02/06/image001-4927-1580979394.png",
      duration: Duration(minutes: 10),
      complexity: Complexity.Medium,
      ingredients: [
        'Bovine bone','fillet','corn cow','setgdrh','onion','lemongrass', 'Onions','Ginger'
      ],
      categoryId: 4),
  Food(
      name: "Bun Cha",
      urlImage:
          "https://travelservices-lesvos.com/wp-content/uploads/2020/08/bun-cha-ha-noi-tai-da-nang-6.jpg",
      duration: Duration(minutes: 10),
      complexity: Complexity.Medium,
      ingredients: [
        'Bacon',
        'Lean meat',
        'Purple onion',
        'lemon',
        'chili garlic',
        'kohlrabi or green papaya',
        'cucumber',
        'carrot',
        'vegetables',
        'Nori',
        'Condiments'
      ],
      categoryId: 4),
  Food(
      name: "sushi - 寿司",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes: 20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://top10monanngon.files.wordpress.com/2019/07/cach-lam-hamburger-ngon-tai-nha.jpg?w=772",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
];
