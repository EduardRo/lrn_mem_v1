import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/screens/quiz/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memorator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const QuizScreen(),
    );
  }
}
