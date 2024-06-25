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
                hintText: 'Search for chats and messages',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 220,
            left: 20,
            right: 20,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/person.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'John Perera',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text('9.56')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Hi, John! How are you doing?'),
                        ],
                      ),
                    ],
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
