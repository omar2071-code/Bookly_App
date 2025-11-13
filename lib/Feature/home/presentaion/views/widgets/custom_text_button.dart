import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.RoundedRectangleBorder,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    required this.colorText,
  });
  final OutlinedBorder RoundedRectangleBorder;
  final Color backgroundColor;
  final void Function() onPressed;
  final String text;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder,
      ),
      onPressed: onPressed,
      child: Text(text, style: Style.textStyle16.copyWith(color: colorText)),
    );
  }
}
