import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  "Memorator - Welcome!",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Introduceti Datele Voastre mai jos:",
                  style: TextStyle(color: Colors.white),
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      hintText: "Nume si Prenume"),
                ),
                const Spacer(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
