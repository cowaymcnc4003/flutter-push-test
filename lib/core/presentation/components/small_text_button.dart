import 'package:flutter/material.dart';
import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class SmallTextButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const SmallTextButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? ColorStyle.primary100 : ColorStyle.white,
        side: const BorderSide(color: ColorStyle.primary100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyles.smallTextRegular.copyWith(
            color: isSelected ? ColorStyle.white : ColorStyle.primary100),
      ),
    );
  }
}
