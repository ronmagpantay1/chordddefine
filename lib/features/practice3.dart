import 'package:flutter/material.dart';

import 'practicemain.dart';

class practice3 extends StatelessWidget {
  const practice3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Practice3(),
        ]),
      ),
    );
  }
}

class Practice3 extends StatelessWidget {
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
                left: 70,
                top: 587,
                child: Container(
                  width: 219,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                ),
              ),
               Positioned(
                  left: 73,
                  top: 598,
                  child: InkWell(
                    onTap: () {
                      // handle tap
                    },
                    child: const SizedBox(
                      width: 212,
                      height: 30,
                      child: Center(
                        child: Text(
                          'PROCEED',
                          // rest of text styling
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: 0,
                top: 244,
                child: Container(
                  width: 150,
                  height: 136,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 150,
                          height: 136,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF535353),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 5,
                        top: 106.22,
                        child: SizedBox(
                          width: 76,
                          height: 22.83,
                          child: Text(
                            'Beginner',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 380,
                child: Container(
                  width: 150,
                  height: 137,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
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
                      const Positioned(
                        left: 3,
                        top: 111,
                        child: SizedBox(
                          width: 89,
                          height: 23,
                          child: Text(
                            'Advanced',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 195,
                child: Container(
                  width: 183,
                  height: 185,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 183,
                          height: 185,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD5E2EA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 13,
                        top: 144,
                        child: SizedBox(
                          width: 92.72,
                          height: 31.06,
                          child: Text(
                            'Casual',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 380,
                child: Container(
                  width: 150,
                  height: 137,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
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
                      const Positioned(
                        left: 5,
                        top: 111,
                        child: SizedBox(
                          width: 112,
                          height: 23,
                          child: Text(
                            'Intermediate',
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
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 163,
                top: 321,
                child: SizedBox(
                  width: 165,
                  height: 18,
                  child: Text(
                    'I can play 3-chord songs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
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
                 onPressed: () { 
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              practicemain()), // Navigate to the next page
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
