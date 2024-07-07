import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        // child: ListView(
        //   padding: EdgeInsets.zero,
        //   children: [
        //     const DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Color.fromARGB(255, 232, 238, 169),
        //         backgroundBlendMode: BlendMode.overlay,
        //       ),
        //       child: Text(
        //         'Drawer Header',
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 24,
        //         ),
        //       ),
        //     ),
        //     ListTile(
        //       trailing: const Hero(
        //         tag: 'settings',
        //         child: Icon(Icons.settings),
        //       ),
        //       title: const Text('Settings'),
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //     ),
        //     ListTile(
        //       trailing: const Hero(
        //         tag: 'profile',
        //         child: Icon(Icons.person),
        //       ),
        //       title: const Text('Profile'),
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //     ),
        //   ],
        // ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _searchBox() {
  return Container(
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
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        labelText: 'Search',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    ),
  );
}
