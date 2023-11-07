import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FIRST PAGE")),
      body: Center(
          child: ElevatedButton(
        child: Text("GO TO SECOND PAGE"),
        onPressed: () => {
          Navigator.pushNamed(context, '/secondpage'),
        },
      )),
    );
  }
}
