import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> containers = [];

  void _addContainer() {
    setState(() {
      containers.add(
        Container(
          width: double.infinity,  // Make container span the full width
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: Colors.blue,  // Set color to blue
          child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 16),  // White text with some padding
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
        title: Text('Add Containers Dynamically'),
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
