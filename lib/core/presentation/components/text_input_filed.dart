import 'package:flutter/material.dart';

import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class TextInputFiled extends StatelessWidget {
  final String placeHolder;
  final TextEditingController controller;
  final void Function(String value)? onSubmitted;

  const TextInputFiled({
    super.key,
    required this.placeHolder,
    required this.controller,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorStyle.gray3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorStyle.primary80),
          ),
          hintText: placeHolder,
          hintStyle:
              TextStyles.smallTextRegular.copyWith(color: ColorStyle.gray4),
        ),
      ),
    );
  }
}
