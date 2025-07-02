import 'package:flutter/material.dart';

class CreateViewModel extends ChangeNotifier {
  Duration selectedTime = const Duration(hours: 8, minutes: 30);
  String selectedTarget = 'All';
  String selectedRepeat = 'none';
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 7));

  void updateTime(Duration time) {
    selectedTime = time;
    notifyListeners();
  }

  void updateTarget(String target) {
    selectedTarget = target;
    notifyListeners();
  }

  void updateRepeat(String repeat) {
    selectedRepeat = repeat;
    notifyListeners();
  }

  void updateStartDate(DateTime date) {
    startDate = date;
    notifyListeners();
  }

  void updateEndDate(DateTime date) {
    endDate = date;
    notifyListeners();
  }
}
