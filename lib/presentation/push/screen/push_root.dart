// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_test_app/core/di/di_setup.dart';
import 'package:push_test_app/presentation/push/push_view_model.dart';

import 'package:push_test_app/presentation/push/screen/push_screen.dart';

class PushRoot extends StatelessWidget {
  const PushRoot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => getIt<PushViewModel>(), child: const PushScreen());
  }
}
