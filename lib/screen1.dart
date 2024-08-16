import 'package:flutter/material.dart';
import 'package:flutter_pratice/screen2.dart';

class DisplayScreen extends StatelessWidget {
  final String userInput;
  final TimeOfDay? selectedTime;

  const DisplayScreen({Key? key, required this.userInput, this.selectedTime}) : super(key: key);

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
            Container(
              child:
              Row(
                children: [
                  Column(
                    children: [
                      Text('User Input: $userInput'),
                      SizedBox(height: 20),
                      Text('Selected Time: ${selectedTime != null ? selectedTime!.format(context) : 'No time selected'}'),
                    ],
                  ),
                  SizedBox(height: 200,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>InputScreen()));
                  }, child: Text("Input"))
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
