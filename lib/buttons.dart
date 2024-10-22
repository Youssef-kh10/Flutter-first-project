import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var count = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Icon(
          Icons.favorite,
          color: Colors.green,
          size: 20,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Image(image: AssetImage('images/pic-no-bg.png')))
              ],
            ),
            TextButton(
              onPressed: () {
                count++;
                print(count);
              },
              child: Icon(Icons.favorite),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              foregroundColor: Colors.blue,
            ),
            ElevatedButton.icon(
                icon: Icon(Icons.check),
                onPressed: () {
                  print('salam');
                },
                label: Text('my ahmed ')),
            OutlinedButton.icon(
              icon: Icon(Icons.library_books_sharp),
              label: Text(
                'Achraffff',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                    color: Colors.red),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  iconColor: Colors.black,
                  backgroundColor: Colors.yellow,
                  side: BorderSide(
                    color: Colors.green,
                    width: 3,
                  )),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Done'),
              style: ElevatedButton.styleFrom(),
            ),
          ],
        ),
      ),
    );
  }
}
