import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test01/homepage.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();

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
                child: Row(children: [
                  Image.asset('assets/arrow.png'),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    'Shedule',
                    style: TextStyle(fontSize: 25),
                  )
                ])),
          ),
          Positioned(
            top: 100, // Adjust this value to position the calendar correctly
            left: 0,
            right: 0,
            child: Column(
              children: [
                buildCalendarHeader(),
                buildDaysOfWeek(),
                buildDates(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCalendarHeader() {
    String month = DateFormat.MMMM().format(selectedDate);
    int year = selectedDate.year;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        '$month $year',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
      dateWidgets.add(Expanded(child: SizedBox()));
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
              margin: EdgeInsets.all(4),
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
