import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075e54), //main
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
            SizedBox(width: 15),
          ],
        ),
        body: SafeArea(
          child: HomeScreen(),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF25d366),
            splashColor: Colors.greenAccent,
            child: Transform.rotate(
              angle: (pi),
              child: Icon(
                Icons.message,
              ),
            )),
      ),
    );
    ;
  }
}
