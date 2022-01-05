import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60,
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.blueGrey),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Go",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
