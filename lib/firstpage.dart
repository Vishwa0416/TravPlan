import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

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
            const Positioned(
              top: 50,
              left: 20,
              child: Text(
                'SignIn',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 230,
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
              top: 320,
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
            const Positioned(
                top: 420,
                left: 30,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/RememberMe.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Remember Me'),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 115, 209),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 116, 211)),
                    )
                  ],
                )),
            const Positioned(
                top: 500,
                left: 110,
                child: Image(image: AssetImage('assets/signin1.png'))),
            const Positioned(
                top: 560,
                left: 75,
                child: Row(
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 115, 209),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 0, 116, 211)),
                    )
                  ],
                )),
            Positioned(top: 580, left: 185, child: Text('or'))
          ],
        ),
      ),
    );
  }
}
