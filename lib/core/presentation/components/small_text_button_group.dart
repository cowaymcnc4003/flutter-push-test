import 'package:flutter/material.dart';
import 'small_text_button.dart';

class SmallTextButtonGroup extends StatefulWidget {
  final List<String> options;
  final void Function(String) onChanged;

  const SmallTextButtonGroup({
    super.key,
    required this.options,
    required this.onChanged,
  });

  @override
  State<SmallTextButtonGroup> createState() => _SmallTextButtonGroupState();
}

class _SmallTextButtonGroupState extends State<SmallTextButtonGroup> {
  String _selectedOption = '';

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.options.first;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.options.map((option) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SmallTextButton(
            label: option,
            isSelected: _selectedOption == option,
            onPressed: () {
              setState(() {
                _selectedOption = option;
              });
              widget.onChanged(option);
            },
          ),
        );
      }).toList(),
    );
  }
}
