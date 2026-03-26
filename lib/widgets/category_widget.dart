import 'package:flutter/material.dart';
import 'package:french_app/models/category_models.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModels category;

  const CategoryWidget({super.key, required this.category,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        category.navigateto(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 200,
          height: 200,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(category.imgpath, height: 90),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    color: category.color,
                    width: double.infinity,
                    child: Center(child: Text(category.txt, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
