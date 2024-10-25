import 'package:flutter/material.dart';
import 'package:TravPlan/homepage.dart';
import 'package:TravPlan/john.dart';
import 'package:TravPlan/bottom_nav_bar.dart';
import 'background_container.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int _selectedIndex = 3;

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
                  Text(
                    'Messages',
                    style: TextStyle(color: Colors.white),
                  ),
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
              child: Card(
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
            ),
            Positioned(
              top: 240,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const John(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/person.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'John Perera',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Spacer(),
                                Text('9:56'),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('Hi, John! How are you doing?'),
                          ],
                        ),
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
