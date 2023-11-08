import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget(
      {super.key,
      required this.label,
      this.fontSize = 20,
      this.color,
      this.textDecoration= TextDecoration.none, this.maxLines});

  final String label;
  final double fontSize;
  final int? maxLines;
  final Color? color;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
        color: color,
        decoration: textDecoration
      ),
    );
  }
}
