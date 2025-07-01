import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  Duration _selectedTime = const Duration(hours: 8, minutes: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('타임피커 예시')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('시간 선택', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              initialTimerDuration: _selectedTime,
              onTimerDurationChanged: (Duration newTime) {
                setState(() {
                  _selectedTime = newTime;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${_selectedTime.inHours}시 ${_selectedTime.inMinutes % 60}분 선택됨',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
