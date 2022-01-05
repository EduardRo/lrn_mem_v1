import 'package:flutter/material.dart';

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
                    mainWidget = const Teste();
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
        body: mainWidget, // Here
      ),
    );
  }
}

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('teste');
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Item 2');
  }
}
