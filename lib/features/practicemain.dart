import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/mainmenu2.dart';
import 'package:guitar_tuner/features/practice2.dart';
import 'package:guitar_tuner/features/practice3.dart';
import 'package:guitar_tuner/features/practice4.dart';
import 'package:guitar_tuner/features/practice5.dart';

class practicemain extends StatelessWidget {
  const practicemain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Practice1(),
        ]),
      ),
    );
  }
}

class Practice1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF161616)),
          child: Stack(
            children: [
              Positioned(
                left: 27,
                top: 195,
                child: Container(
                  width: 150,
                  height: 137,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF535353),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 177,
                top: 333,
                child: Container(
                  width: 150,
                  height: 137,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF535353),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 177,
                top: 195,
                child: Container(
                  width: 150,
                  height: 137,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD5E2EA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 333,
                child: Container(
                  width: 150,
                  height: 137,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD5E2EA),
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
                left: 27,
                top: 64,
                child: SizedBox(
                  width: 305,
                  height: 111,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Choose your \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'difficulty',
                          style: TextStyle(
                            color: Color(0xFFEF5225),
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64,
                top: 252,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const practice2()), // Navigate to the next page
                    );
                  },
                  child: const SizedBox(
                    width: 76,
                    height: 23,
                    child: Text(
                      'Beginner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 207,
                top: 388,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const practice5()), // Navigate to the next page
                    );
                  },
                  child: const SizedBox(
                    width: 89,
                    height: 23,
                    child: Text(
                      'Advanced',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 214,
                top: 252,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const practice3()), // Navigate to the next page
                    );
                  },
                  child: const SizedBox(
                    width: 76,
                    height: 23,
                    child: Text(
                      'Casual',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 388,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const practice4()), // Navigate to the next page
                    );
                  },
                  child: const SizedBox(
                    width: 112,
                    height: 23,
                    child: Text(
                      'Intermediate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const menu2()), // Navigate to the next page
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 736,
                child: Container(
                  width: 52,
                  height: 52,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFD5E2EA),
                          size: 50,
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
