import 'package:flutter/material.dart';
import 'package:lrn_mem_v1/Memorator/screens/menu_clase.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget mainWidget = const Teste();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavBar Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mati-Mato'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: const Text('Teste'),
                onTap: () {
                  // What happens after you tap the navigation item
                  setState(() {
                    mainWidget = const ButtonsWithName();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Resultat'),
                onTap: () {
                  // What happens after you tap the navigation item
                  setState(() {
                    mainWidget = const Item2();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Teorie'),
                onTap: () {
                  // What happens after you tap the navigation item
                  setState(() {
                    mainWidget = const Item2();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Despre'),
                onTap: () {
                  // What happens after you tap the navigation item
                  setState(() {
                    mainWidget = const Item2();
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: mainWidget, //mainWidget, // Here
      ),
    );
  }
}

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 1000,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("img/background.jpg"),
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Item 2');
  }
}
