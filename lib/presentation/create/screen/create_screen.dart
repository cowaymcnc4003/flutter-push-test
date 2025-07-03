import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_test_app/presentation/create/create_view_model.dart';
import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';
import 'package:push_test_app/core/presentation/components/small_text_button_group.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CreateViewModel>();

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
                initialTimerDuration: viewModel.selectedTime,
                minuteInterval: 5,
                onTimerDurationChanged: viewModel.updateTime,
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
              selectedTarget: viewModel.selectedTarget,
              onChanged: viewModel.updateTarget,
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
              selectedTarget: viewModel.selectedRepeat,
              onChanged: viewModel.updateRepeat,
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
                  onPressed: () => _selectStartDate(context, viewModel),
                  child: Text(
                    "${viewModel.startDate.toLocal()}".split(' ')[0],
                    style: const TextStyle(color: Colors.black),
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
                  onPressed: () => _selectEndDate(context, viewModel),
                  child: Text(
                    "${viewModel.endDate.toLocal()}".split(' ')[0],
                    style: const TextStyle(color: Colors.black),
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

  Future<void> _selectStartDate(
      BuildContext context, CreateViewModel viewModel) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: viewModel.startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      viewModel.updateStartDate(picked);
    }
  }

  Future<void> _selectEndDate(
      BuildContext context, CreateViewModel viewModel) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: viewModel.endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      viewModel.updateEndDate(picked);
    }
  }
}
