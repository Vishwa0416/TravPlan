import 'package:flutter/material.dart';
import 'package:TravPlan/secondpage.dart';
import 'package:TravPlan/signin.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/firstpageback.png'),
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
              // Big Text
              top: 460,
              left: 80,
              child: Text(
                'Life is short and \nthe world is ',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Positioned(
              // Small text
              top: 503,
              left: 245,
              child: Text(
                'wide',
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 237, 104, 3)),
              ),
            ),
            const Positioned(
              // Underline
              top: 540,
              left: 245,
              child: Image(image: AssetImage('assets/line.png')),
            ),
            const Positioned(
              // Small text
              top: 550,
              left: 30,
              child: Text(
                '  At Friends tours and travel, we customize \nreliable and trustworthy educational tours to \n        destinations all over the world',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 174, 174, 171)),
              ),
            ),
            const Positioned(
              // Three dots
              top: 650,
              left: 150,
              child: Image(image: AssetImage('assets/dots.png')),
            ),
            //Button
            Positioned(
              top: 690,
              left: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Second(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 33, 54, 243),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
