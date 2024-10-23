import 'package:flutter/material.dart';
import 'package:TravPlan/location.dart';
import 'package:TravPlan/notifications.dart';
import 'bottom_nav_bar.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  int _currentPageIndex = 0; // Track the current page index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onArrowTapped() {
    if (_currentPageIndex < 1) {
      // Ensure we don't go out of bounds
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extends body to behind the AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Gradient overlay for better readability
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Image and name box
          Positioned(
            top: 50,
            left: 10,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/person.png')),
                        ),
                        Text('Vishwa'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 200),
                // Bell icon with notification badge
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifications(),
                          ),
                        );
                      },
                      child: const Image(image: AssetImage('assets/bell.png')),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            // Big Text
            top: 120,
            left: 40,
            child: Text(
              "Explore The \nBeautiful ",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const Positioned(
            // Small text
            top: 170,
            left: 195,
            child: Text(
              'World',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 237, 104, 3)),
            ),
          ),
          const Positioned(
            // underline
            top: 210,
            left: 210,
            child: Image(image: AssetImage('assets/line.png')),
          ),
          const Positioned(
            // Best Destination text
            top: 250,
            left: 40,
            child: Row(
              children: [
                Text(
                  'Best Destination',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 125),
                Text(
                  'View all',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 33, 54, 243),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            left: 60,
            right: 50,
            child: SizedBox(
              height: 400,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Location(),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/sigiriya1.jpg'),
                              width: 290,
                              height: 320,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Sigiriya',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 85),
                                Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 255, 204, 0),
                                  size: 24,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image(image: AssetImage('assets/location.png')),
                                SizedBox(width: 15),
                                Text(
                                  'Sigiriya, Sri Lanka',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Image(
                        image: AssetImage('assets/kandy.jpg'),
                        width: 290,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60),
                          Text(
                            'Kandy',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 85),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 204, 0),
                            size: 24,
                          ),
                          SizedBox(width: 15),
                          Text(
                            '4.9',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 80),
                          Image(image: AssetImage('assets/location.png')),
                          SizedBox(width: 15),
                          Text(
                            'Kandy, Sri Lanka',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Progress dots
          Positioned(
            bottom: 60,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: _currentPageIndex == index ? 12 : 8,
                  height: _currentPageIndex == index ? 12 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == index
                        ? Colors.orangeAccent
                        : const Color.fromARGB(255, 124, 123, 123)
                            .withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          // Floating action button for quick access
          Positioned(
            bottom: 50,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.orange,
              onPressed: () {
                // Action for favorites or quick access
              },
              child: const Icon(Icons.favorite_border),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
