import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final List<int> numbers;

  ScreenB({required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Received Numbers:',
              style: TextStyle(fontSize: 24),
            ),
            ...numbers.map((number) => Text(
              number.toString(),
              style: TextStyle(fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
