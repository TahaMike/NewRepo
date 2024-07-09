import 'package:flutter/material.dart';

import '../widgets/todo_items.dart';
import '../models/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDone = false;

  final todoList = ToDo.todoList();

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
      body: Stack(
        children: [
          Container(
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
                      for (ToDo todo in todoList)
                        ToDoItems(
                          todo: todo,
                          onDeleteItem: _onDeleteItem,
                        ),
                    ],
                  ),
                ),
                _addTask(),
              ],
            ),
          ),
        ],
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
    padding: const EdgeInsets.only(right: 0, left: 10, top: 5, bottom: 5),
    margin: const EdgeInsets.only(top: 20, bottom: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    alignment: Alignment.bottomCenter,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(right: 10),
            child: const TextField(
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
        ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(right: 10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 186, 199, 42),
              elevation: 5,
              shape: const CircleBorder(eccentricity: 0.3),
            ),
            child: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 233, 255, 173),
              size: 25,
            ),
          ),
        ),
      ],
    ),
  );
}

void _onDeleteItem(ToDo todo) {
  ToDo.todoList().remove(todo);
}
