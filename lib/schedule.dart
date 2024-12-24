import 'package:TravPlan/calendar.dart';
import 'package:flutter/material.dart';
import 'package:TravPlan/homepage.dart';
import 'package:TravPlan/bottom_nav_bar.dart';
import 'background_container.dart';

class Shedule extends StatefulWidget {
  const Shedule({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Shedule> {
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
                      builder: (context) => const Calendar(),
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
                      'Schedule',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'My Schedule',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage('assets/sig2.jpg'),
                              width: 80.0),
                          SizedBox(
                            width: 65,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                  ),
                                  SizedBox(width: 5),
                                  Text('12th June 2024'),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Sigiriya Rock',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage('assets/location.png')),
                                  SizedBox(width: 5),
                                  Text('Sigiriya, Sri Lanka'),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Image(image: AssetImage('assets/goarrow.png')),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage('assets/sig2.jpg'),
                              width: 80.0),
                          SizedBox(
                            width: 65,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                  ),
                                  SizedBox(width: 5),
                                  Text('12th June 2024'),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Sigiriya Rock',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage('assets/location.png')),
                                  SizedBox(width: 5),
                                  Text('Sigiriya, Sri Lanka'),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Image(image: AssetImage('assets/goarrow.png')),
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
