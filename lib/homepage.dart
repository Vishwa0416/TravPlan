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
      body: Stack(
        children: [
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
                // Bell icon
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
              ],
            ),
          ),
          const Positioned(
            // Big Text
            top: 120,
            left: 40,
            child: Text(
              "Explore the \nBeautiful ",
              style: TextStyle(fontSize: 35),
            ),
          ),
          const Positioned(
            // Small text
            top: 170,
            left: 195,
            child: Text(
              'world',
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 237, 104, 3)),
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
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 125,
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 33, 54, 243),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            right: 30,
            child: SizedBox(
              height: 400,
              child: PageView(
                controller: _pageController, // Set the page controller
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index; // Update current page index
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
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            Image(
                              image: AssetImage('assets/sigiriya1.jpg'),
                              width: 290,
                              height: 320,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Sigiriya',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 85,
                                ),
                                Image(image: AssetImage('assets/star.png')),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('4.7')
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image(image: AssetImage('assets/location.png')),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Sigiriya, Sri Lanka',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 123, 123, 123)),
                                )
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: _onArrowTapped, // Call the arrow tap method
                          child: const Image(
                              image: AssetImage('assets/rightarrow.png')),
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            'Kandy',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Image(image: AssetImage('assets/star.png')),
                          SizedBox(
                            width: 15,
                          ),
                          Text('4.9')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                          ),
                          Image(image: AssetImage('assets/location.png')),
                          SizedBox(width: 15),
                          Text(
                            'Kandy, Sri Lanka',
                            style: TextStyle(
                                color: Color.fromARGB(255, 123, 123, 123)),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
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
