import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:lrn_mem_v1/screens/components/progress_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: const [
                ProgressBar(),
                Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor),
                    children: [
                      TextSpan(
                          text: "/10", style: TextStyle(color: kSecondaryColor))
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
