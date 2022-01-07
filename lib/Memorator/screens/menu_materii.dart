// ignore_for_file: unnecessary_const

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/* void main() {
  runApp(const MaterialApp(home: MenuMaterii()));
} */

class MenuMaterii extends StatefulWidget {
  const MenuMaterii({Key? key, required this.cls}) : super(key: key);
  final String cls;

  @override
  MenuMateriiState createState() => MenuMateriiState();
}

class MenuMateriiState extends State<MenuMaterii> {
  late List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.parse(
            "https://www.matematicon.ro/_teste-grila-json/menu_clasa.php?cls=${widget.cls}"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = jsonDecode(response.body) as List;
    });

    return "Success!";
  }

  @override
  void initState() {
    super.initState;
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Materii clasa a ${widget.cls}-a"),
          backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                tileColor: Colors.blueAccent,

                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  padding: const EdgeInsets.only(right: 12.0),
                  decoration: const BoxDecoration(
                    //color: Colors.black,
                    border: Border(
                      right: BorderSide(width: 1.0, color: Colors.white24),
                    ),
                  ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white24),
                ),
                title: Text(
                  "${data[index]['denumireserie']}",
                  style: const TextStyle(
                      color: Colors.black26, fontWeight: FontWeight.bold),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                subtitle: Row(
                  children: const <Widget>[
                    const Text('Performanta',
                        style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star,
                      color: Colors.redAccent,
                      size: 15.0,
                    ),
                    Icon(Icons.star, size: 15.0, color: Colors.white),
                    Icon(Icons.star, size: 15.0, color: Colors.yellowAccent),
                    Icon(Icons.star, size: 15.0, color: Colors.yellowAccent),
                    Icon(Icons.star, size: 15.0, color: Colors.yellowAccent),
                    Icon(Icons.star, size: 15.0, color: Colors.yellowAccent),
                  ],
                ),

                trailing: const Icon(Icons.keyboard_arrow_right,
                    color: Colors.white, size: 30.0),
              ),
              const Divider(
                height: 1,
                color: Colors.red,
              )
            ],
          );
        },
      ),
    );
  }
}
