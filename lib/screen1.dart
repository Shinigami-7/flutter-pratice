import 'package:flutter/material.dart';
import 'package:flutter_pratice/SecondScreen.dart';

class CurrentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to the next page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Secondscreen()),
            );
          },
          child: Container(
            height: 100,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Tap Here',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
