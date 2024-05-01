import 'package:flutter/material.dart';
import 'package:test01/signuppage.dart';
import 'package:test01/homepage.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/firstpageback.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Stack(
          children: [
            Positioned(
                top: 30,
                left: 330,
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 20),
                )),
            Positioned(
                top: 450,
                left: 80,
                child: Text(
                  'Life is short and \nthe world is ',
                  style: TextStyle(fontSize: 30),
                )),
            Positioned(
                top: 493,
                left: 245,
                child: Text(
                  'wide',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 237, 104, 3)),
                )),
            Positioned(
                top: 530,
                left: 245,
                child: Image(image: AssetImage('assets/line.png'))),
            Positioned(
                top: 550,
                left: 30,
                child: Text(
                  '  At Friends tours and travel, we customize \nreliable and trustworthy educational tours to \n        destinations all over the world',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 174, 174, 171)),
                )),
            Positioned(
                top: 650,
                left: 150,
                child: Image(image: AssetImage('assets/dots.png'))),
            Positioned(
                top: 690,
                left: 35,
                child: Image(image: AssetImage('assets/started.png')))
          ],
        ),
      ),
    );
  }
}
