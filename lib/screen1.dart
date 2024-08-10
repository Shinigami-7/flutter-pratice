import 'package:flutter/material.dart';
import 'package:flutter_pratice/screen2.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example list of integers
    List<int> numbers = [1, 2, 3, 4, 5];

    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Screen B with the list of integers
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenB(numbers: numbers),
              ),
            );
          },
          child: Text('Go to Screen B'),
        ),
      ),
    );
  }
}
