import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final int size;
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: Colors.black87),
            borderRadius: BorderRadius.circular(2.0)),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  backgroundColor: Colors.red.withOpacity(0.7),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text('-->'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
