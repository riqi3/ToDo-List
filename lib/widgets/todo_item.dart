import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/todo.dart';

class ToDoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key:key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: () {
        onToDoChanged(todo);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: bg,
      leading: Icon(
        todo.isDone ? Icons.check_box: Icons.check_box_outline_blank,
        color: red,
      ),
      title: Text(
        todo.todoText!,
        style: TextStyle(
            fontSize: 16,
            color: black1,
            decoration: todo.isDone? TextDecoration.lineThrough : null,
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
           onPressed: (){
             onDeleteItem(todo.id);
           },
         ),
       ),
    ));
  }
}
