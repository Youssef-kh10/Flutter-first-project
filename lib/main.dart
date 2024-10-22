// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const achraf());
}

int mynumber = 0;
Color mycolor = Colors.black; // Default color for the icon

class achraf extends StatefulWidget {
  const achraf({super.key});

  @override
  State<achraf> createState() => _achrafState();
}

class _achrafState extends State<achraf> {
  bool isFavorite = false; // Track if the icon is favorited or not

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          hoverColor: Colors.red,
          foregroundColor: isFavorite
              ? Colors.white
              : Colors.red, // Change color based on the favorite status
          backgroundColor: Colors.green,
          onPressed: () {
            setState(() {
              mynumber++;
              isFavorite = !isFavorite; // Toggle the favorite status
            });

            print('$mynumber');
          },
        ),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Image is pressed');
                },
                child: Image(
                  image: AssetImage('images/pic-no-bg.png'),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text('$mynumber'),
            ),
          ],
        ),
      ),
    );
  }
}
