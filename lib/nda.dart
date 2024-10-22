import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

var achraf = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          body: SafeArea(
              child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage('images/moorva.png'),
                ),
                Container(
                  child: Text(
                    'MOORVA',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/pic-no-bg.png'),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Achraf OUAHIDI',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.red,
                      size: 23,
                    ),
                    title: Text(
                      'ouahidiashraf@gmai.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.ads_click),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 2, 30, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    title: Text(
                      '212661968694',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: TextButton(
                        onPressed: () {
                          print('done');
                        },
                        child: Icon(
                          Icons.abc_outlined,
                        ),
                        style: TextButton.styleFrom(
                          iconColor: Colors.orange,
                        )),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 2, 30, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home_filled,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RUE 06 NR 80 CITE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.face),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          achraf++;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$achraf',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
