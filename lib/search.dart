import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';
import 'bottom_nav_bar.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  'Search',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Cancel',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          const Positioned(
            top: 110,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search places',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
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
