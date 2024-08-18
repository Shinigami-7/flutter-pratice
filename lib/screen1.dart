import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String userInput;
  final int? numberInput;
  final TimeOfDay? selectedTime;
  final DateTime? selectedDate;

  const DisplayScreen({
    Key? key,
    required this.userInput,
    this.numberInput,
    this.selectedTime,
    this.selectedDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Input: $userInput'),
            const SizedBox(height: 20),
            Text('Number Input: ${numberInput ?? 'No number entered'}'),
            const SizedBox(height: 20),
            Text('Selected Date: ${selectedDate != null ? selectedDate!.toLocal().toString().split(' ')[0] : 'No date selected'}'),
            const SizedBox(height: 20),
            Text('Selected Time: ${selectedTime != null ? selectedTime!.format(context) : 'No time selected'}'),
          ],
        ),
      ),
    );
  }
}
