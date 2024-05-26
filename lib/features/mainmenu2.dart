import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/exploremain.dart';
import 'package:guitar_tuner/features/home/presentation/pages/home_page.dart';
import 'package:guitar_tuner/features/mainlearn.dart';
import 'package:guitar_tuner/features/practicemain.dart';

// ignore: camel_case_types
class menu2 extends StatelessWidget {
  const menu2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        body: ListView(children: [
          MainMenuTutorial(),
        ]),
      ),
    );
  }
}

class MainMenuTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 696,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF161616)),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 108,
                child: Container(
                  width: 152,
                  height: 152,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF938BEE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 188,
                top: 108,
                child: Container(
                  width: 152,
                  height: 152,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEF7F0E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 324,
                child: Container(
                  width: 152,
                  height: 152,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF535353),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 188,
                top: 324,
                child: Container(
                  width: 152,
                  height: 152,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4E2D7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 724,
                child: Container(
                  width: 360,
                  height: 76,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
              ),
              const Positioned(
                left: 20,
                top: 260,
                child: SizedBox(
                  width: 45,
                  height: 17,
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 20,
                top: 477,
                child: SizedBox(
                  width: 76,
                  height: 23,
                  child: Text(
                    'Practice',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 188,
                top: 260,
                child: SizedBox(
                  width: 57,
                  height: 23,
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 188,
                top: 477,
                child: SizedBox(
                  width: 57,
                  height: 23,
                  child: Text(
                    'Tuner',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 110,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              mainlearn()), // Navigate to the next page
                    );
                  },
                  child: SizedBox(
                    width: 130,
                    height: 205,
                    child: Icon(
                      Icons.psychology,
                      color: Colors.black,
                      size: 130,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 207,
                top: 110,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              exploremain()), // Navigate to the next page
                    );
                  },
                  child: SizedBox(
                    width: 128,
                    height: 205,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 130,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 314,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              practicemain()), // Navigate to the next page
                    );
                  },
                  child: SizedBox(
                    width: 120,
                    height: 205,
                    child: Icon(
                      Icons.pan_tool,
                      color: Colors.white,
                      size: 110,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 203,
                top: 330,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Tuner()), // Navigate to the next page
                    );
                  },
                  child: SizedBox(
                    width: 135,
                    height: 205,
                    child: Icon(
                      Icons.tune,
                      color: const Color.fromARGB(255, 202, 124, 118),
                      size: 110,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 26,
                top: 36,
                child: SizedBox(
                  width: 307,
                  height: 135,
                  child: Text(
                    'TAKE NOTE',
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
                left: 20,
                top: 16,
                child: Container(
                  width: 37,
                  height: 37,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 3,
                top: 640,
                child: Container(
                  width: 52,
                  height: 52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 165, 46, 46)),
                        ),
                      ),
                    ],
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
