import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue[900],
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue[800],
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue[700],
              ),
            ],
          )),
    );
  }
}
