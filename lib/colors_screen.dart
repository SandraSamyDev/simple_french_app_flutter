import 'package:flutter/material.dart';
import 'package:french_app/data/colors_data.dart';
import 'package:french_app/widgets/items_widget.dart';

class ColorsScreen extends StatelessWidget {
  final Color color;
  const ColorsScreen({super.key, required this.color,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(centerTitle: true,
  title: Text("Colors", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  backgroundColor: color,
  iconTheme: IconThemeData(color: Colors.white),
),
body: Padding(padding: EdgeInsetsGeometry.all(10)
,child: ListView.builder(itemBuilder: (context,index){
return ItemsWidget(item: colorsList[index] , color:color );
}, itemCount: colorsList.length,)

,
),
    );
  }
}