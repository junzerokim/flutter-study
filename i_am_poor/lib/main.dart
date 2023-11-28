import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.orange,
          appBar: AppBar(
            title: Text('I Am Poor'),
            backgroundColor: Colors.orange[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/poor.png'),
            ),
          )),
    );
  }
}
