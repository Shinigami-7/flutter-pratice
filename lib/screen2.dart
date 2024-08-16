import 'package:flutter/material.dart';
import 'package:flutter_pratice/screen1.dart';
import 'package:flutter_pratice/screen3.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Enter something'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayScreen(
                      userInput: _controller.text,
                    ),
                  ),
                );
              },
              child: const Text('Go to Display Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimeInputScreen(userInput: _controller.text)),
                );
              },
              child: const Text('Go to Time Input Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
