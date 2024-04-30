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
                left: 100,
                child: Text(
                  'Life is short and \nthe world is ',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
