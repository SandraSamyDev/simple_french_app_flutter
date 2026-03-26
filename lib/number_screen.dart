import 'package:flutter/material.dart';
import 'package:french_app/data/numbers_data.dart';
import 'package:french_app/widgets/items_widget.dart';

class NumberScreen extends StatelessWidget {
  final Color color;
  const NumberScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
appBar: AppBar(centerTitle: true,
  title: Text("Numbers", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  backgroundColor: Colors.green,
  iconTheme: IconThemeData(color: Colors.white),
),
body: Padding(padding: EdgeInsetsGeometry.all(10)
,child: ListView.builder(itemBuilder: (context,index){
return ItemsWidget(item: numbersList[index],color: color,);
}, itemCount: numbersList.length,)

,
),
    );
  }
}