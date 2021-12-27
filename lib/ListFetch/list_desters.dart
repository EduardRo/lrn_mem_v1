import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://www.matematicon.ro/_teste-grila-json/menu_clasa.php'));

  print(response.body);

  if (response.statusCode == 200) {
    List<Album> albums = [];
    List<dynamic> albumsJson = jsonDecode(response.body);

    for (var oneAlbum in albumsJson) {
      Album album = Album.fromJson(oneAlbum);
      albums.add(album);
    }
    return albums;
  } else {
    throw Exception('Failed to load Array');
  }
}

class Album {
  final String codClasa;
  final String codMaterie;
  final String codSerie;
  final String denumireSerie;

  Album(
      {required this.codClasa,
      required this.codMaterie,
      required this.codSerie,
      required this.denumireSerie});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      codClasa: json['codclasa'],
      codMaterie: json['codmaterie'],
      codSerie: json['codserie'],
      denumireSerie: json['denumireserie'],
    );
  }
}

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Album',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Album>>(
            future: fetchAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Album>? resData = snapshot.data;
                return ListView.builder(
                    itemCount: resData != null ? resData.length : 0,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          resData?[index].codSerie ?? "";
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(resData?[index].codClasa ?? ""),
                            subtitle: Text(resData?[index].denumireSerie ?? ""),
                          ),
                        ),
                      );
                    });
              }

              // if (snapshot.hasData) {
              //   return Text(snapshot.data!.title);
              // } else if (snapshot.hasError) {
              //   return Text('${snapshot.error}');
              // }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
