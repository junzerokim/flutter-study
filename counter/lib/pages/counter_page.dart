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
    // setstate rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _initCounter() {
    setState(() {
      _counter *= 0;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // counter value

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.arrow_upward)),
              Text(_counter.toString(), style: TextStyle(fontSize: 40)),
              ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.arrow_downward)),
            ],
          ),
          ElevatedButton(
            onPressed: _initCounter,
            child: Text(
              'C',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    ));
  }
}
