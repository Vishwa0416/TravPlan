import 'package:TravPlan/readmore.dart';
import 'package:flutter/material.dart';
import 'package:TravPlan/homepage.dart';
import 'view.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sigiriya1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Location(),
                  ),
                );
              },
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          const Positioned(
            top: 40,
            left: 150,
            child: Text(
              'Details',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Views(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sigiriya',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Sigiriya, Sri Lanka',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Image(image: AssetImage('assets/location.png')),
                        Text('  Sigiriya'),
                        SizedBox(width: 40),
                        Image(image: AssetImage('assets/star.png')),
                        Text('  4.7 (2498)'),
                        SizedBox(width: 40),
                        Text(
                          ' Rs. 2500/=',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text('/Per.')
                      ],
                    ),
                    const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/sig1.jpg'),
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage('assets/sig2.jpg'),
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage('assets/sig3.png'),
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage('assets/sig4.jpg'),
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage('assets/sig5.png'),
                          width: 60,
                          height: 80,
                        )
                      ],
                    ),
                    const Text(
                      'About Destination',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                        "Sigiriya or Sinhagiri is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka. Sigiriya was designated as a world heritage site in 1982."),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Readmore(),
                          ),
                        );
                      },
                      child: Text('Read more...',
                          style: TextStyle(
                            color: Color.fromARGB(255, 237, 104, 3),
                          )),
                    ),
                    Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 54, 243),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
