// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_test_app/core/di/di_setup.dart';
import 'package:push_test_app/presentation/create/create_view_model.dart';

import 'package:push_test_app/presentation/create/screen/create_screen.dart';

class CreateRoot extends StatelessWidget {
  const CreateRoot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<CreateViewModel>(),
      child: const CreateScreen(),
    );
  }
}
