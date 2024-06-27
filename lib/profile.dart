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
          Positioned(
            top: 40,
            left: 150,
            child: Row(
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  child: const Image(image: AssetImage('assets/pen.png')),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 120,
            left: 70,
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
                      fontSize: 15, color: Color.fromARGB(255, 126, 126, 126)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Reward Points'),
                        Text(
                          '360',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text('Travel Trips'),
                        Text(
                          '478',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text('Bucket List'),
                        Text(
                          '223',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            top: 370,
            left: 50,
            right: 50,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/profile.png')),
                        SizedBox(width: 10),
                        Text('Profile'),
                      ],
                    ),
                    Image(image: AssetImage('assets/goarrow.png')),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/bookmark.png')),
                        SizedBox(width: 10),
                        Text('Bookmarks'),
                      ],
                    ),
                    Image(image: AssetImage('assets/goarrow.png')),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/trips.png')),
                        SizedBox(width: 10),
                        Text('Previous Trips'),
                      ],
                    ),
                    Image(image: AssetImage('assets/goarrow.png')),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/settings.png')),
                        SizedBox(width: 10),
                        Text('Settings'),
                      ],
                    ),
                    Image(image: AssetImage('assets/goarrow.png')),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/version.png')),
                        SizedBox(width: 10),
                        Text('Version'),
                      ],
                    ),
                    Image(image: AssetImage('assets/goarrow.png')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
