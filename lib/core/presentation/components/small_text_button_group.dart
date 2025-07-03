import 'package:flutter/material.dart';
import 'package:push_test_app/core/presentation/components/small_text_button.dart';

class SmallTextButtonGroup extends StatelessWidget {
  final List<String> options;
  final String selectedTarget;
  final void Function(String) onChanged;

  const SmallTextButtonGroup({
    super.key,
    required this.options,
    required this.selectedTarget,
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
            isSelected: option == selectedTarget,
            onPressed: () => onChanged(option),
          ),
        );
      }).toList(),
    );
  }
}
