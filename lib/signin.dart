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
            child: Image(image: AssetImage('assets/arrow.png')))
      ],
    ));
  }
}
