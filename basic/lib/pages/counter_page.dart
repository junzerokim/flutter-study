import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    // setState rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // message
          Text("You pushed the button this many times"),

          // counter
          Text(
            _counter.toString(),
            style: TextStyle(fontSize: 40),
          ),

          // button
          ElevatedButton(onPressed: _incrementCounter, child: Text("Increment"))
        ],
      ),
    ));
  }
}
