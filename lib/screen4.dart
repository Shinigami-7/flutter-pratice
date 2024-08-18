import 'package:flutter/material.dart';
import 'package:flutter_pratice/screen1.dart';

class FourthScreen extends StatefulWidget {
  final String userInput;
  final int? numberInput;

  const FourthScreen({
    Key? key,
    required this.userInput,
    this.numberInput,
  }) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  TimeOfDay? _selectedTime;
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                _selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                setState(() {});
              },
              child: const Text('Pick Date'),
            ),
            const SizedBox(height: 20),
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
                if (_selectedTime != null && _selectedDate != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayScreen(
                        userInput: widget.userInput,
                        numberInput: widget.numberInput,
                        selectedTime: _selectedTime,
                        selectedDate: _selectedDate,
                      ),
                    ),
                  );
                }
              },
              child: const Text('Go to Display Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
