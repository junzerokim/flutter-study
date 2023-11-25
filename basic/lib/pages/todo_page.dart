import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

  // greet user method
  void greetUser() {
    String userName = myController.text;

    setState(() {
      // ignore: prefer_interpolation_to_compose_strings
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // greeet user message
            Text(greetingMessage),
            // textfield
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name",
              ),
            ),

            // button
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            )
          ],
        ),
      ),
    ));
  }
}
