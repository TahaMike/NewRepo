import '../widgets/todo_items.dart';

import '../models/todo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final todosList = ToDo.todoList();

  final todo = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 238, 169),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 232, 238, 169),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lime[100],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          children: [
            _searchBox(),
            Expanded(
              child: ListView(
                // shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: const Center(
                      child: Text(
                        'All ToDos',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  for (ToDo todo in todosList) const ToDoItems(),
                ],
              ),
            ),
            _addTask(),
          ],
        ),
      ),
    );
  }
}

Widget _searchBox() {
  return Container(
    margin: const EdgeInsets.only(top: 5, bottom: 20),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 25,
          minWidth: 25,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    ),
  );
}

Widget _addTask() {
  return Container(
    // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    padding: const EdgeInsets.only(right: 0, left: 10, top: 5, bottom: 5),

    margin: const EdgeInsets.only(top: 20, bottom: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(right: 10),
              prefixIcon: Icon(
                Icons.add_task,
                color: Color.fromARGB(255, 61, 66, 2),
                size: 20,
              ),
              prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                minWidth: 20,
              ),
              border: InputBorder.none,
              hintText: 'Add New Task',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 186, 199, 42),
            elevation: 5,
            shape: const CircleBorder(eccentricity: 0.3),
          ),
          child: const Icon(Icons.add),
        ),
      ],
    ),
  );
}
