import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/screens/components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter shows the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Skip'),
          )
        ],
      ),
      body: const Body(),
    );
  }
}
