import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/secondpageback1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              //skip
              top: 30,
              left: 330,
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Positioned(
              //Big Text
              top: 450,
              left: 80,
              child: Text(
                "It's a big world out \nthere go ",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Positioned(
              //Small text
              top: 493,
              left: 205,
              child: Text(
                'explore',
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 237, 104, 3)),
              ),
            ),
            const Positioned(
              //underline
              top: 530,
              left: 225,
              child: Image(image: AssetImage('assets/line.png')),
            ),
            const Positioned(
              //small text
              top: 550,
              left: 30,
              child: Text(
                '  At Friends tours and travel, we customize \nreliable and trustworthy educational tours to \n        destinations all over the world',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 174, 174, 171)),
              ),
            ),
            const Positioned(
              //three dots
              top: 650,
              left: 150,
              child: Image(image: AssetImage('assets/dots.png')),
            ),
            Positioned(
              //get started
              top: 690,
              left: 35,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Second(),
                    ),
                  );
                },
                child: const Image(image: AssetImage('assets/started.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
