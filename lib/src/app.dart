import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int count = 0;

  void fetchImage() async {
    count++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$count');
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$count'),
        appBar: AppBar(
          title: Text("Let's see some images!"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );
  }
}
