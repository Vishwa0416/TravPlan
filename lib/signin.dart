import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 40,
            left: 20,
            child: Image(image: AssetImage('assets/arrow.png'))),
        Positioned(
            top: 150,
            left: 125,
            child: Text(
              'Sign in now',
              style: TextStyle(fontSize: 25),
            )),
        Positioned(
            top: 190,
            left: 85,
            child: Text(
              'Please sign in to continue our app',
              style: TextStyle(color: Color.fromARGB(255, 116, 116, 115)),
            )),
        //username
        Align(
          alignment: Alignment(0, -0.25),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                hintStyle: TextStyle(color: Color.fromARGB(112, 0, 0, 0)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.blue, // Border color
                    width: 2.0, // Border width
                  ),
                ),
              ),
            ),
          ),
        ),
        //password
        Align(
          alignment: Alignment(0, 0.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                hintStyle: TextStyle(color: Color.fromARGB(112, 0, 0, 0)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
