import 'package:flutter/material.dart';
import 'package:test01/thirdpage.dart';
import 'package:test01/signin.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // Skip
              top: 30,
              left: 330,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 20),
                ),
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
                '  To get the best of your adventure you just \nneed to leave and go where you like. we are \n                       waiting for you',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 174, 174, 171)),
              ),
            ),
            const Positioned(
              //three dots
              top: 650,
              left: 150,
              child: Image(image: AssetImage('assets/threedots2.png')),
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
                      builder: (context) => const Third(),
                    ),
                  );
                },
                child: const Image(image: AssetImage('assets/next.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
