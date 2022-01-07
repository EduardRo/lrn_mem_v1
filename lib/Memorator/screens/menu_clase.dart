// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/Memorator/screens/menu_materii.dart';

class ButtonsWithName extends StatefulWidget {
  const ButtonsWithName({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonsWithNameState();
  }
}

class _ButtonsWithNameState extends State<ButtonsWithName> {
  late final String name1;
  late final String name2;
  late final String name3;
  late final String name4;

  var namesList = <String>[];
  List<TextButton> buttonsList = <TextButton>[];

  @override
  void initState() {
    super.initState();
    name1 = 'Clasa a IX-a';
    name2 = 'Clasa a X-a';
    name3 = 'Clasa a XI-a';
    name4 = 'Clasa a XII-a';

    namesList.add(name1);
    namesList.add(name2);
    namesList.add(name3);
    namesList.add(name4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: namesList.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(namesList[index]),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  shadowColor: Colors.black,
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MenuMaterii(cls: getCls(index))));
                },
              ),
            );
          }),
    );
  }
}

String getCls(index) {
  switch (index) {
    case 0:
      return '09';

    case 1:
      return '10';

    case 2:
      return '11';

    default:
      return '12';
  }
}
