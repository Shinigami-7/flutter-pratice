import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> containers = [];
  final Random _random = Random();

  // Function to generate a random color
  Color _getRandomColor() {
    return Color.fromARGB(
      255,  // Set opacity to fully opaque
      _random.nextInt(256),  // Random value for Red (0-255)
      _random.nextInt(256),  // Random value for Green (0-255)
      _random.nextInt(256),  // Random value for Blue (0-255)
    );
  }

  void _addContainer() {
    setState(() {
      containers.add(
        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: _getRandomColor(),  // Use the random color generator
          child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Containers with Random Colors'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _addContainer,
            child: Text('Add Container'),
          ),
          Expanded(
            
            child: ListView.builder(
              itemCount: containers.length,
              itemBuilder: (context, index) {
                return containers[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
