import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List? data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.parse(
            "https://www.matematicon.ro/_teste-grila-json/menu_clasa.php?cls=10"),
        headers: {"Accept": "application/json"});
    //print(response.body);
    setState(() {
      data = json.decode(response.body);
      //data = response.body as List;
    });

    return response.body;
  }

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Listviews"), backgroundColor: Colors.blue),
      body: ListView.builder(
        //itemCount: data!.length,
        itemCount: data == null ? 0 : data!.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                height: 1,
                indent: 16,
                color: Colors.red,
                endIndent: 16,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${data![index]["codserie"]} bla bla bla ${data![index]["codmaterie"]}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                borderOnForeground: false,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(data![index]["denumireserie"]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
