import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:push_test_app/core/presentation/components/search_input_filed.dart';
import 'package:push_test_app/presentation/push/push_action.dart';
import 'package:push_test_app/presentation/push/push_state.dart';
import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class PushScreen extends StatelessWidget {
  final PushState state;
  final TextEditingController? controller;
  final void Function(PushAction action) onAction;
  const PushScreen({
    super.key,
    required this.state,
    required this.controller,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hello \${uuid}',
                style: TextStyles.largeTextBold,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: SearchInputFiled(
                      controller: controller,
                      placeHolder: "Search",
                      onChanged: (value) {
                        return onAction(PushAction.onTextChanged(value));
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorStyle.primary100),
                    child: const Icon(Icons.tune, color: ColorStyle.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(state.query),
              ElevatedButton(
                  onPressed: () {
                    log(state.pushSchedule.toString());
                    controller!.text = '2234324';
                  },
                  child: const Text('click me'))
            ],
          ),
        )),
      ),
    );
  }
}
