import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }

}

class AppState extends State<App> {
  int count = 0;
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
        onPressed: () {
          setState(() {
            count++;  
          });
          },
      ),
    ),
  );
  }
  
}