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
          const Positioned(
            top: 105,
            left: 25,
            child: Row(
              children: [
                Text('Messages'),
                SizedBox(
                  width: 250,
                ),
                Image(image: AssetImage('assets/message.png'))
              ],
            ),
          ),
          const Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
