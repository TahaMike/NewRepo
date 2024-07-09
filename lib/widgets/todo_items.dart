import 'package:flutter/material.dart';

import '../models/todo.dart';

class ToDoItems extends StatefulWidget {
  const ToDoItems({super.key});

  @override
  State<ToDoItems> createState() => _ToDoItemsState();
}

class _ToDoItemsState extends State<ToDoItems> {
  get todoText => null;
  bool isDone =
      false; // Add this line to declare and initialize the 'isDone' variable

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(1),
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              isDone = !isDone;
            });
          },
          icon: Icon(isDone ? Icons.check_box_outline_blank : Icons.check_box),
          color: Colors.blueGrey,
        ),
        title: Text(
          todoText as String,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {});
          },
          icon: const Icon(
            Icons.delete,
            color: Color.fromARGB(255, 231, 57, 45),
          ),
        ),
      ),
    );
  }
}
