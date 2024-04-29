import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Stack(children: [
          Positioned(
              //hello vishwa text
              top: 50,
              left: 10,
              child: Text(
                'Hello Vishwa',
                style: TextStyle(fontSize: 30),
              ))
        ]),
      ),
    );
  }
}
