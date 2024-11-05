import 'package:TravPlan/schedule.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:TravPlan/homepage.dart';
import 'package:TravPlan/bottom_nav_bar.dart';
import 'background_container.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementMonth() {
    setState(() {
      selectedDate = DateTime(
        selectedDate.year,
        selectedDate.month + 1,
        selectedDate.day,
      );
    });
  }

  void _decrementMonth() {
    setState(() {
      selectedDate = DateTime(
        selectedDate.year,
        selectedDate.month - 1,
        selectedDate.day,
      );
    });
  }

  void _incrementYear() {
    setState(() {
      selectedDate = DateTime(
        selectedDate.year + 1,
        selectedDate.month,
        selectedDate.day,
      );
    });
  }

  void _decrementYear() {
    setState(() {
      selectedDate = DateTime(
        selectedDate.year - 1,
        selectedDate.month,
        selectedDate.day,
      );
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
                      'Schedule',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    buildCalendarHeader(),
                    buildDaysOfWeek(),
                    buildDates(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 450.0,
              left: 30.0,
              right: 30.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'My Schedule',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Shedule(),
                            ),
                          );
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(color: Colors.blue),
                        ),
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

  Widget buildCalendarHeader() {
    String month = DateFormat.MMMM().format(selectedDate);
    int year = selectedDate.year;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: _decrementMonth,
          ),
          Column(
            children: [
              Text(
                '$month $year',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_left),
                    onPressed: _decrementYear,
                  ),
                  Text('$year'),
                  IconButton(
                    icon: const Icon(Icons.arrow_right),
                    onPressed: _incrementYear,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: _incrementMonth,
          ),
        ],
      ),
    );
  }

  Widget buildDaysOfWeek() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: ['S', 'M', 'T', 'W', 'T', 'F', 'S']
          .map((day) => Expanded(
                child: Center(
                  child: Text(
                    day,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget buildDates() {
    final firstDayOfMonth = DateTime(selectedDate.year, selectedDate.month, 1);
    final lastDayOfMonth =
        DateTime(selectedDate.year, selectedDate.month + 1, 0);

    int daysInMonth = lastDayOfMonth.day;
    int firstWeekdayOfMonth = firstDayOfMonth.weekday % 7;

    List<Widget> dateWidgets = [];

    for (int i = 0; i < firstWeekdayOfMonth; i++) {
      dateWidgets.add(const Expanded(child: SizedBox()));
    }

    for (int i = 1; i <= daysInMonth; i++) {
      DateTime currentDate = DateTime(selectedDate.year, selectedDate.month, i);

      dateWidgets.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedDate = currentDate;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: selectedDate.day == i ? Colors.blue : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '$i',
                  style: TextStyle(
                    color: selectedDate.day == i ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    while (dateWidgets.length % 7 != 0) {
      dateWidgets.add(const Expanded(child: SizedBox()));
    }

    List<Row> rows = [];
    for (int i = 0; i < dateWidgets.length; i += 7) {
      rows.add(Row(
        children: dateWidgets.sublist(
            i, i + 7 > dateWidgets.length ? dateWidgets.length : i + 7),
      ));
    }

    return Column(
      children: rows,
    );
  }
}
