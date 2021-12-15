import 'package:flutter/material.dart';

import 'package:lrn_mem_v1/Carousel/widgets/app_large_text.dart';
import 'package:lrn_mem_v1/Carousel/widgets/app_text.dart';
import 'package:lrn_mem_v1/Carousel/widgets/response_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["img1.jpg", "img2.jpg", "img3.jpg", "img4.jpg", "img5.jpg"];
  List text = [
    "first page - Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "second page - Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "third page -  If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
    "four page",
    "five page"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/img/" + images[index]),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              padding: const EdgeInsets.all(1.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        size: 30,
                        color: Colors.black,
                        backgroundColor: Colors.white.withOpacity(0.5),
                        text: "Intelligent Designs",
                      ),
                      // ignore_for_file: prefer_const_constructors
                      AppText(
                        size: 30,
                        text: "Descover",
                        color: Colors.red[900]!,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          size: 20,
                          color: Colors.black87,
                          text: text[index],
                        ),
                      ),
                      ResponsiveButton(
                        width: 150,
                        isResponsive: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
