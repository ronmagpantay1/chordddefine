import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/mainmenu1.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Landing(),
          ],
        ),
      ),
    );
  }
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 696,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
          child: Stack(
            children: [
              Positioned(
                left: 60,
                top: 63,
                child: Container(
                  width: 230,
                  height: 393,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/chordefine1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 26,
                top: 367,
                child: SizedBox(
                  width: 307,
                  height: 135,
                  child: Text(
                    'WELCOME TO CHORDEFINE!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 593,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const mainmenu1()), // Navigate to the next page
                    );
                  },
                  child: Container(
                    width: 219,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 78, 78, 78),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'PROCEED',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF4E2D7),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
