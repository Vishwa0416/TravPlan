import 'package:flutter/material.dart';
import 'package:test01/signin.dart';

class Forgot extends StatelessWidget {
  const Forgot({Key? key}) : super(key: key);

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
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter your email account to reset  your password',
                    style: TextStyle(color: Color.fromARGB(255, 116, 116, 115)),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
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
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showResetDialog(context);
                    },
                    child: const Image(image: AssetImage('assets/reset.png')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showResetDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Image.asset('assets/emailimg.png'),
              const SizedBox(height: 10),
              const Text('Check your email'),
            ],
          ),
          content: const Text(
              'We have sent password recovery instructions to your email.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
