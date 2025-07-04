// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class BigButton extends StatefulWidget {
  final String label;
  final void Function() onPressed;
  const BigButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
          widget.onPressed();
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: isPressed ? ColorStyle.gray3 : ColorStyle.primary100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.label,
                style: TextStyles.normalTextBold.copyWith(
                  color: Colors.white,
                )),
            const SizedBox(width: 11),
            const Icon(
              Icons.arrow_forward,
              color: ColorStyle.white,
            )
          ],
        ),
      ),
    );
  }
}
