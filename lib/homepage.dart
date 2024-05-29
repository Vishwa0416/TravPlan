import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            // Positioned widget to place the container
            top: 50,
            left: 10,
            child: Container(
                width: 150,
                height: 50,
                color: Color.fromARGB(255, 183, 183, 183)),
          ),
        ],
      ),
    );
  }
}
