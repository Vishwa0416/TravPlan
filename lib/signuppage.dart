import 'package:flutter/material.dart';
import 'package:test01/homepage.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/signinback.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            //signup text
            const Positioned(
              top: 50,
              left: 20,
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              //username
              top: 110,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 189, 144)
                            .withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Color.fromARGB(110, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 21, 22, 23),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              //email address
              top: 190,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 189, 144)
                            .withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Color.fromARGB(110, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 21, 22, 23),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              //phone number
              top: 270,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 189, 144)
                            .withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Color.fromARGB(110, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 21, 22, 23),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              //password
              top: 350,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 189, 144)
                            .withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromARGB(110, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 21, 22, 23),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              //confirm password
              top: 430,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 189, 144)
                            .withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Color.fromARGB(110, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 21, 22, 23),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              //remember me
              top: 500,
              left: 30,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/RememberMe.png')),
                  SizedBox(width: 10),
                  Text('Remember Me'),
                ],
              ),
            ),
            Positioned(
              //sign in image
              top: 540,
              left: 110,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: const Image(image: AssetImage('assets/signup1.png')),
              ),
            ),
            Positioned(
              //text
              top: 590,
              left: 75,
              child: Row(
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      //sign in text
                      'Sign In',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 115, 209),
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 0, 116, 211),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(top: 620, left: 185, child: Text('or')),
            const Positioned(
                //google and fblogos
                top: 660,
                left: 150,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/googlelogo.png')),
                    SizedBox(
                      width: 40,
                    ),
                    Image(image: AssetImage('assets/fblogo.png')),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
