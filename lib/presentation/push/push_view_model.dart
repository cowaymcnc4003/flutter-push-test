import 'package:flutter/material.dart';
import 'package:push_test_app/domain/repository/push_repository.dart';
import 'package:push_test_app/presentation/push/push_action.dart';
import 'package:push_test_app/presentation/push/push_state.dart';

class PushViewModel with ChangeNotifier {
  final PushRepository _pushRepository;

  PushViewModel({
    required PushRepository pushRepository,
  }) : _pushRepository = pushRepository {
    controller.addListener(() {
      _onTextChanged(controller.text);
    });
    _loadPushList();
  }

  PushState _pushState = const PushState();
  PushState get pushState => _pushState;

  final TextEditingController controller = TextEditingController();

  void onAction(PushAction action) {
    switch (action) {
      case OnTextChanged():
        _onTextChanged(action.value);
    }
  }

  void _loadPushList() async {
    controller.text = pushState.query;

    _pushState = pushState.copyWith(
        pushSchedule: await _pushRepository.getPushSchedules());

    print(await _pushRepository.getPushSchedule("push002"));

    notifyListeners();
  }

  void _onTextChanged(String text) {
    _pushState = pushState.copyWith(query: text);
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
