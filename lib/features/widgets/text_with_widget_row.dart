import 'package:flutter/material.dart';

class TextWithWidgetRow extends StatelessWidget {
  final Widget leading;
  final String text;
  final TextStyle? textStyle;
  final double spacing;

  const TextWithWidgetRow({
    super.key,
    required this.leading,
    required this.text,
    this.textStyle,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        SizedBox(width: spacing),
        Text(text, style: textStyle),
      ],
    );
  }
}
