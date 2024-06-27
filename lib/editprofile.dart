import 'package:flutter/material.dart';
import 'package:test01/profile.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

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
                    builder: (context) => const Profile(),
                  ),
                );
              },
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          Positioned(
            top: 40,
            left: 150,
            child: Row(
              children: [
                const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  width: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Edit(),
                      ),
                    );
                  },
                  child: const Text('Done'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
