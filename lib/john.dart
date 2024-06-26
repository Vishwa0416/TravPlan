import 'package:flutter/material.dart';
import 'package:test01/messages.dart';

class John extends StatelessWidget {
  const John({Key? key}) : super(key: key);

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
                    builder: (context) => const Messages(),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/arrow.png'),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'John Perera',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
