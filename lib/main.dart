import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Let's see some images!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      ),
    ),
  );
  runApp(app);
}