import 'package:flutter/material.dart';
import 'package:test01/location.dart';

class Views extends StatelessWidget {
  const Views({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sigiriya2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Location(),
                  ),
                );
              },
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          const Positioned(
            top: 40,
            left: 150,
            child: Text(
              'View',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 95,
            left: 150,
            child: Container(
              width: 200,
              height: 75,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 52),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/hotel.jpg'),
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Araliya Hotel',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '2.09 mi',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 355,
            left: 50,
            child: Container(
              width: 230,
              height: 75,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 52),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/pidurangala.jpeg'),
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Pidurangala Rock',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '8.18 mi',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 540,
            left: 20,
            child: Container(
              width: 350,
              height: 255,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 52),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Sigiriya Rock',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Image(image: AssetImage('assets/star.png')),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '4.7',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/location.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sigiriya, Sri Lanka',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/time.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1h 20min',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image(image: AssetImage('assets/map.png'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
