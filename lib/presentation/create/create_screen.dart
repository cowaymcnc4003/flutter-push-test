import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:push_test_app/presentation/create/create_viewmodel.dart';
import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';
import 'package:push_test_app/core/presentation/components/small_text_button_group.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  late final CreateViewModel createViewModel = CreateViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('푸시 생성')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: createViewModel.selectedTime,
                minuteInterval: 5,
                onTimerDurationChanged: (Duration newTime) {
                  setState(() {
                    createViewModel.selectedTime = newTime;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),

            /// 타겟 선택
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('타겟', style: TextStyles.mediumTextBold),
            ),
            const SizedBox(height: 10),
            SmallTextButtonGroup(
              options: const ['All', 'User'],
              onChanged: (selected) {
                createViewModel.selectedTarget = selected;
              },
            ),
            const SizedBox(height: 20),

            /// 반복 선택
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('반복', style: TextStyles.mediumTextBold),
            ),
            const SizedBox(height: 10),
            SmallTextButtonGroup(
              options: const ['none', 'daily', 'weekly'],
              onChanged: (selected) {
                createViewModel.selectedRepeat = selected;
              },
            ),
            const SizedBox(height: 20),

            /// 시작일
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('시작일', style: TextStyles.mediumTextBold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.calendar_today, color: Colors.teal),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: _selectStartDate,
                  child: const Text(
                    "111",
                    style: TextStyle(color: Color.fromARGB(255, 14, 7, 7)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// 종료일
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('종료일', style: TextStyles.mediumTextBold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.calendar_today, color: Colors.teal),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: _selectEndDate,
                  child: const Text(
                    "111",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            /// 등록 버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  // 등록 로직
                },
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                label: const Text('등록', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectStartDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: createViewModel.startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        createViewModel.startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: createViewModel.endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        createViewModel.endDate = picked;
      });
    }
  }
}
