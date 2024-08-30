import 'package:flutter/material.dart';
import 'package:TravPlan/firstpage.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const First(),
                ),
              );
            },
            child: Container(
              //backpage
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Travplanback.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
