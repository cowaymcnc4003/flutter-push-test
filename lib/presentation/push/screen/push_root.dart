// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:push_test_app/data/repository/mock_push_repository_impl.dart';
import 'package:push_test_app/presentation/push/push_view_model.dart';

import 'package:push_test_app/presentation/push/screen/push_screen.dart';

class PushRoot extends StatelessWidget {
  const PushRoot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = PushViewModel(pushRepository: MockPushRepositoryImpl());
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return PushScreen(
          state: viewModel.pushState,
          controller: viewModel.controller,
          onAction: viewModel.onAction,
        );
      },
    );
  }
}
