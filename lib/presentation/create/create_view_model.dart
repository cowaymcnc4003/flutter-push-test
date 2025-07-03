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
    print("selectedTarget = $selectedTarget");
    notifyListeners();
  }

  void updateRepeat(String repeat) {
    selectedRepeat = repeat;
    print("selectedRepeat = $selectedRepeat");
    notifyListeners();
  }

  void updateStartDate(DateTime date) {
    startDate = date;
    print("startDate = $startDate");
    notifyListeners();
  }

  void updateEndDate(DateTime date) {
    endDate = date;
    print("endDate = $endDate");
    notifyListeners();
  }
}
