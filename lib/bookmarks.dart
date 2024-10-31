import 'package:TravPlan/profile.dart';
import 'package:flutter/material.dart';
import 'package:TravPlan/homepage.dart';
import 'bottom_nav_bar.dart';
import 'background_container.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Bookmarks> {
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
                    'Bookmarks',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(width: 50),
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
                                builder: (context) => const Home(),
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
                right: 20,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search places',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                )),
            const Positioned(
                top: 180,
                left: 20,
                child: Text(
                  'Search Places',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const Positioned(
              top: 220,
              left: 30,
              child: Card(
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
            ),
            const Positioned(
              top: 220,
              left: 220,
              child: Card(
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
