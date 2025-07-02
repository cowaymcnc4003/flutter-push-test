// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class SearchInputFiled extends StatelessWidget {
  final String placeHolder;
  final TextEditingController? controller;
  final bool? isReadOnly;
  final void Function(String value)? onChanged;

  const SearchInputFiled({
    super.key,
    required this.placeHolder,
    this.controller,
    this.isReadOnly = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        readOnly: isReadOnly!,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: ColorStyle.gray4,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorStyle.gray4),
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
