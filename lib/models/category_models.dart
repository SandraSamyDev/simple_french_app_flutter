import 'package:flutter/material.dart';

class CategoryModels {
  final  Color color;
  final String imgpath;
  final String txt;
  final Widget Function (Color) screen;

  CategoryModels({required this.color, required this.imgpath, required this.txt, required this.screen});
  void navigateto(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>screen(color)));
} 
}
