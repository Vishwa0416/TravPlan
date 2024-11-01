import 'package:TravPlan/profile.dart';
import 'package:flutter/material.dart';
import 'package:TravPlan/homepage.dart';
import 'bottom_nav_bar.dart';
import 'background_container.dart';

class Prev extends StatefulWidget {
  const Prev({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Prev> {
  int _selectedIndex = 1;

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
                      builder: (context) => const Profile(),
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
                    'Previous Trips',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(width: 20),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(),
                              ),
                            );
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const Positioned(
                top: 110,
                left: 20,
                child: Text(
                  'Bookmarks',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            const Positioned(
              top: 140,
              left: 30,
              child: Row(
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/sig2.jpg'),
                            width: 120,
                            height: 120,
                          ),
                          Text(
                            'Sigiriya Rock',
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage('assets/location.png')),
                              SizedBox(width: 10),
                              Text('Sigiriya, Sri Lanka'),
                            ],
                          ),
                          Text(
                            'Rs. 5000/Person',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/kandy2.jpg'),
                            width: 120,
                            height: 120,
                          ),
                          Text(
                            'Sri Dalada Maligawa',
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage('assets/location.png')),
                              SizedBox(width: 10),
                              Text('Kandy, Sri Lanka'),
                            ],
                          ),
                          Text(
                            'Rs. 5000/Person',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
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
