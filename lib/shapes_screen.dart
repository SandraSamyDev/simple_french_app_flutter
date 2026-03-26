import 'package:flutter/material.dart';
import 'package:french_app/data/shapes_data.dart';
import 'package:french_app/widgets/items_widget.dart';

class ShapesScreen extends StatelessWidget {
  final Color color;
  const ShapesScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
appBar: AppBar(centerTitle: true,
  title: Text("Shapes", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  backgroundColor:color,
  iconTheme: IconThemeData(color: Colors.white),
),
body: Padding(padding: EdgeInsetsGeometry.all(10)
,child: ListView.builder(itemBuilder: (context,index){
return ItemsWidget(item: shapesList[index],color: color,);
}, itemCount: shapesList.length,)

,
),
    );
  }
}