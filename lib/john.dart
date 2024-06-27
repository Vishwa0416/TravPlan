import 'package:flutter/material.dart';
import 'package:test01/messages.dart';

class John extends StatelessWidget {
  const John({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
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
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    'John Perera',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  const Image(image: AssetImage('assets/call.png'))
                ],
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.attach_file),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(image: AssetImage('assets/mic.png'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
