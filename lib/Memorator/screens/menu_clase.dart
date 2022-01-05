import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/'));

  // print(response.body);

  if (response.statusCode == 200) {
    List<Album> albums = [];

    List<dynamic> albumsJson = jsonDecode(response.body);

    for (var oneAlbum in albumsJson) {
      Album album = Album.fromJson(oneAlbum);
      albums.add(album);
    }
    //print(albums);
    //print(albumsJson[2].title);

    return albums;
  } else {
    throw Exception('Failed to load album!');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;
  final String body;

  Album(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
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
                      return Card(
                        child: ListTile(
                          title: Text(resData?[index].title ?? ""),
                          subtitle: Text(resData?[index].body ?? ""),
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
