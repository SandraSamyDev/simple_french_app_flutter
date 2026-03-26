import 'package:flutter/material.dart';
import 'package:french_app/animals_screen.dart';
import 'package:french_app/colors_screen.dart';
import 'package:french_app/models/category_models.dart';
import 'package:french_app/number_screen.dart';
import 'package:french_app/shapes_screen.dart';

final List<CategoryModels> categories = [
  CategoryModels(
    color: Colors.red,
    imgpath: "assets/colors_icon.png",
    txt: "Colors",
    screen: (color) => ColorsScreen(color: color),
  ),
  CategoryModels(
    color: Colors.blue,
    imgpath: "assets/animals_icon.png",
    txt: "Animals",
    screen: (color) => AnimalsScreen(color: color),
  ),
  CategoryModels(
    color: Colors.green,
    imgpath: "assets/numbers_icon.png",
    txt: "Numbers",
    screen: (color) => NumberScreen(color: color),
  ),
  CategoryModels(
    color: Colors.orange,
    imgpath: "assets/shapes_icon.png",
    txt: "Shapes",
    screen: (color) => ShapesScreen(color: color),
  ),
];
