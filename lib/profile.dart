import 'package:flutter/material.dart';
import 'homepage.dart';
import 'editprofile.dart';
import 'bottom_nav_bar.dart';
import 'background_container.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Stack(
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
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Edit(),
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
                        fontSize: 15,
                        color: Color.fromARGB(255, 210, 210, 210)),
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
                  ),
                ],
              ),
            ),
            Positioned(
              top: 370,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Edit(),
                        ),
                      );
                    },
                    child: Card(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 50,
                        minHeight: 40,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: AssetImage('assets/profile.png')),
                              ),
                              SizedBox(width: 10),
                              Text('Profile'),
                            ],
                          ),
                          Image(image: AssetImage('assets/goarrow.png')),
                        ],
                      ),
                    )),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 50,
                        minHeight: 40,
                      ),
                      child: Row(
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
                    )),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      // Add the correct navigation action here
                    },
                    child: const Card(
                      child: Row(
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
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                      onTap: () {
                        // Add the correct navigation action here
                      },
                      child: const Card(
                        child: Row(
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
                      )),
                  const SizedBox(height: 25),
                  GestureDetector(
                      onTap: () {
                        // Add the correct navigation action here
                      },
                      child: const Card(
                        child: Row(
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
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
