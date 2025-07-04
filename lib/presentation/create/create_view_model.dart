import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:push_test_app/presentation/create/create_state.dart';

class CreateViewModel extends ChangeNotifier {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  CreateState _createState = CreateState(
    selectedTime: Duration(
      hours: DateTime.now().hour,
      minutes: DateTime.now().minute,
    ),
    startDate: DateTime.now(),
    endDate: DateTime.now().add(const Duration(days: 7)),
  );

  CreateState get createState => _createState;

  CreateViewModel() {
    titleController.text = createState.title;
    messageController.text = createState.message;

    titleController.addListener(() {
      _createState = createState.copyWith(title: titleController.text);
      notifyListeners();
    });

    messageController.addListener(() {
      _createState = createState.copyWith(message: messageController.text);
      notifyListeners();
    });
  }

  void updateTime(Duration time) {
    _createState = createState.copyWith(selectedTime: time);
    notifyListeners();
  }

  void updateTarget(String target) {
    _createState = createState.copyWith(selectedTarget: target);
    notifyListeners();
  }

  void updateRepeat(String repeat) {
    _createState = createState.copyWith(selectedRepeat: repeat);
    notifyListeners();
  }

  void toggleDay(String day) {
    final newDays = List<String>.from(createState.selectedDays);
    if (newDays.contains(day)) {
      newDays.remove(day);
    } else {
      newDays.add(day);
    }
    _createState = createState.copyWith(selectedDays: newDays);
    notifyListeners();
  }

  Future<void> selectStartDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: createState.startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked == null) return;

    if (picked.isAfter(createState.endDate!)) {
      log("시작일은 종료일보다 늦을 수 없습니다.");
      return;
    }

    _createState = _createState.copyWith(startDate: picked);
    notifyListeners();
  }

  Future<void> selectEndDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: createState.endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked == null) return;

    if (picked.isBefore(createState.startDate!)) {
      log("종료일은 시작일보다 빠를 수 없습니다.");
      return;
    }

    _createState = _createState.copyWith(endDate: picked);
    notifyListeners();
  }

  @override
  void dispose() {
    titleController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
