import 'package:flutter/material.dart';
import 'package:french_app/data/category_data.dart';
import 'package:french_app/widgets/category_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 146, 88, 156),
      appBar: AppBar(
        elevation: 15.0,
        shadowColor: Colors.black87,
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/france.png"),
          ),
        ],
        title: Text(
          "Petit Parrot",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(category: categories[index]);
        },
      ),
    );
  }
}
