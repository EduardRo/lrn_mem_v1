import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final Color backgroundColor;

  const AppLargeText(
      {Key? key,
      required this.text,
      required this.color,
      required this.backgroundColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        backgroundColor: backgroundColor.withOpacity(0.5),
      ),
    );
  }
}
