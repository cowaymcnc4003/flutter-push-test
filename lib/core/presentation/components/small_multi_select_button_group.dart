import 'package:flutter/material.dart';
import 'package:push_test_app/core/presentation/components/small_text_button.dart';

class SmallMultiSelectButtonGroup extends StatelessWidget {
  final List<String> options;
  final List<String> selectedValues;
  final void Function(String) onChanged;

  const SmallMultiSelectButtonGroup({
    super.key,
    required this.options,
    required this.selectedValues,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: options.map((option) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SmallTextButton(
            label: option,
            isSelected: selectedValues.contains(option),
            onPressed: () => onChanged(option),
          ),
        );
      }).toList(),
    );
  }
}
