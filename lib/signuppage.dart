import 'package:flutter/material.dart';
import 'package:TravPlan/signin.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
                child: Image.asset('assets/arrow.png'),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 110),
                  const Text(
                    'Sign up now',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Please fill the details and create account',
                    style: TextStyle(color: Color.fromARGB(255, 116, 116, 115)),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
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
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'E-mail',
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
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color.fromARGB(112, 0, 0, 0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 1, 134, 244),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password must contain atleast 8 characters.',
                      style:
                          TextStyle(color: Color.fromARGB(255, 116, 116, 115)),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Image.asset('assets/signupnew.png'),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },
                        child: const Text(
                          'SignIn',
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 133, 215),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text('or connect'),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/fb.png'),
                      const SizedBox(width: 30),
                      Image.asset('assets/insta.png'),
                      const SizedBox(width: 30),
                      Image.asset('assets/twitter.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
