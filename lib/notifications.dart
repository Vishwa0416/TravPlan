import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';
import 'package:test01/john.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

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
                    'Notifications',
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
                Text('Notifications'),
                SizedBox(
                  width: 250,
                ),
              ],
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const John(),
                  ),
                );
              },
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/person.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Kandy',
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              Text('9:56'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text('Hi, John! How are you doing?'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
