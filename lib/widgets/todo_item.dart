import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: bg,
      leading: Icon(
        Icons.check_box,
        color: red,
      ),
      title: Text(
        'test',
        style: TextStyle(
            fontSize: 16,
            color: black1,
            decoration: TextDecoration.lineThrough,
            ),
      ),
       trailing: Container(
         padding: EdgeInsets.all(0),
         height: 35,
         width: 35,
         decoration: BoxDecoration(
           color: red,
           borderRadius: BorderRadius.circular(5),
         ),
         child: IconButton(
           color: bg,
           iconSize: 18,
           icon: Icon(Icons.delete),
           onPressed: (){},
         ),
       ),
    ));
  }
}
