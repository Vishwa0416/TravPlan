import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';

class Views extends StatelessWidget {
  const Views({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sigiriya2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          const Positioned(
            top: 40,
            left: 150,
            child: Text(
              'View',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
              top: 95,
              left: 150,
              child: Container(
                  width: 150,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 51, 51, 52),
                    borderRadius: BorderRadius.circular(15),
                  )))
        ],
      ),
    );
  }
}
