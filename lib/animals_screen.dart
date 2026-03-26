import 'package:flutter/material.dart';
import 'package:french_app/data/animals_data.dart';
import 'package:french_app/widgets/items_widget.dart';

class AnimalsScreen extends StatelessWidget {
  final Color color;
  const AnimalsScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(centerTitle: true,
  title: Text("Animals", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  backgroundColor: Colors.blue ,
  iconTheme: IconThemeData(color: Colors.white),
),
body: Padding(padding: EdgeInsetsGeometry.all(10)
,child: ListView.builder(itemBuilder: (context,index){
return ItemsWidget(item: animalsList[index], color: color,);
}, itemCount: animalsList.length,)

,
),
    );
  }
}