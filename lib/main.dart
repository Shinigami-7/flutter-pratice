import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  final String? time;
  final String? date;

  const MainScreen({Key? key, this.time, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Time: ${time ?? "No Time Selected"}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Date: ${date ?? "No Date Selected"}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenOne()),
                );
                if (result != null && result is String) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Time Selected: $result')),
                  );
                }
              },
              child: Text('Select Time'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()),
                );
                if (result != null && result is String) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Date Selected: $result')),
                  );
                }
              },
              child: Text('Select Date'),
            ),
          ],
        ),
      ),
    );
  }
}
