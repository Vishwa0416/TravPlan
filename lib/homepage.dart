import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(children: [
        Positioned(
            //hello vishwa text
            top: 50,
            left: 10,
            child: Text(
              'Hello Vishwa',
              style: TextStyle(fontSize: 30),
            ))
      ]),
    );
  }
}
