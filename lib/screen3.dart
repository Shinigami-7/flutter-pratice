import 'package:flutter/material.dart';
import 'package:flutter_pratice/screen1.dart';

class TimeInputScreen extends StatefulWidget {
  final String userInput;

  const TimeInputScreen({Key? key, required this.userInput}) : super(key: key);

  @override
  _TimeInputScreenState createState() => _TimeInputScreenState();
}

class _TimeInputScreenState extends State<TimeInputScreen> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                _selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {});
              },
              child: const Text('Pick Time'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayScreen(
                      userInput: widget.userInput,
                      selectedTime: _selectedTime,
                    ),
                  ),
                );
              },
              child: const Text('Go to Display Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
