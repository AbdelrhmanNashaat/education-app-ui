import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color? color;
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.fontWeight,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
