import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child; // This allows embedding the content of each page

  const BackgroundContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Gradient overlay
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        // Child widget for each specific page content
        child,
      ],
    );
  }
}
