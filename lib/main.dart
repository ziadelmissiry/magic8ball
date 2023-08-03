import 'package:flutter/material.dart';
import 'dart:math';

void main() { runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    appBar:AppBar(
      title: Center(child: Text('Magic 8 Ball')),
    ),
    body: MyApp(),
  ),
  
),

);

}


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball = 2;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       Expanded(child: TextButton(
         onPressed: () {
           setState(() {
            ball = Random().nextInt(5)+1;
           });
            },
         child: Image.asset('images/ball$ball.png'),
         ),
       ),



      ],
    );
  }
}
