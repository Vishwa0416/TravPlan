import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Image and name box
          Positioned(
            top: 50,
            left: 10,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 183, 183, 183),
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
                const SizedBox(width: 200),
                //Bell icon
                const Image(image: AssetImage('assets/bell.png')),
              ],
            ),
          ),
          const Positioned(
            //Big Text
            top: 120,
            left: 40,
            child: Text(
              "Explore the \nBeautiful ",
              style: TextStyle(fontSize: 35),
            ),
          ),
          const Positioned(
            //Small text
            top: 170,
            left: 195,
            child: Text(
              'world',
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 237, 104, 3)),
            ),
          ),
          const Positioned(
            //underline
            top: 210,
            left: 210,
            child: Image(image: AssetImage('assets/line.png')),
          ),
          const Positioned(
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
                    'view all',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 49, 145, 255)),
                  )
                ],
              )),
          const Positioned(
              top: 300,
              left: 30,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/sigiriya1.jpg'),
                    width: 290,
                    height: 336,
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
                ],
              ))
        ],
      ),
    );
  }
}
