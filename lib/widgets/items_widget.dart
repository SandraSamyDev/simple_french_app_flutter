
import 'package:flutter/material.dart';
import 'package:french_app/helpers/audiohelper.dart';
import 'package:french_app/models/item_model.dart';

class ItemsWidget extends StatelessWidget {

  final ItemModel item;
  final Color color; 


  const ItemsWidget({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return     Card(
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(8)),
        leading: Image.asset(item.imgpath) ,
        tileColor: color,
        title: Text(item.frenchword),
        subtitle:Text(item.englishword) ,
        trailing: IconButton(onPressed: (){
          Audiohelper.playSound(path: item.soundpath);
        }, icon: Icon(Icons.play_arrow)),
      ),
    );
  }
}