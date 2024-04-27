import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        child: Stack(children: []),
      ),
    );
  }
}
