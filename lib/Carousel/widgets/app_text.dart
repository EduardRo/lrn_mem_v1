import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final double size;

  final String text;
  final Color color;

  const AppText(
      {Key? key,
      required this.text,
      this.color = Colors.black54,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w300,
        backgroundColor: Colors.white.withOpacity(0.3),
      ),
    );
  }
}
