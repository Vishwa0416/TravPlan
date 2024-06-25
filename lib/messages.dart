import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
              child: Row(
                children: [
                  Image.asset('assets/arrow.png'),
                  const SizedBox(
                    width: 85,
                  ),
                  const Text(
                    'Messages',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
