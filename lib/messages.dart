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
          Positioned(
            top: 220,
            left: 20,
            right: 20,
            child: Row(
              children: [
                const Image(image: AssetImage('assets/sig2.jpg'), width: 80.0),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                        ),
                        SizedBox(width: 5),
                        Text('12th June 2024'),
                      ],
                    ),
                    const Text(
                      'Sigiriya Rock',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/location.png'),
                        const SizedBox(width: 5),
                        const Text('Sigiriya, Sri Lanka'),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Image(image: AssetImage('assets/goarrow.png')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
