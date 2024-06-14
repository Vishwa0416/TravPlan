import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          const Positioned(
            top: 40,
            left: 150,
            child: Row(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 100,
                ),
                Image(image: AssetImage('assets/pen.png'))
              ],
            ),
          ),
          const Positioned(
              top: 120,
              left: 120,
              child: Column(
                children: [
                  Image(image: AssetImage('assets/man.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Leonardo',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'leonardo@gmail.com',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 126, 126, 126)),
                  ),
                  Row(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
