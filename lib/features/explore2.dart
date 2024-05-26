import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/exploremain.dart';

class explore2 extends StatelessWidget {
  const explore2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Explore2(),
        ]),
      ),
    );
  }
}

class Explore2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF161616)),
          child:SizedBox(
            width: 360,
            height: 800,
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
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/beatles.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 12,
                top: 117,
                child: SizedBox(
                  width: 220,
                  height: 45,
                  child: Text(
                    'YESTERDAY',
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
              const Positioned(
                left: 18,
                top: 150,
                child: SizedBox(
                  width: 220,
                  height: 41,
                  child: Text(
                    'The beatles',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
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
                              exploremain()), // Navigate to the next page
                    );
                 },
                ),
              ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 199,
                child: Container(
                  width: 316,
                  height: 99,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 35,
                top: 207,
                child: SizedBox(
                  width: 82,
                  height: 23,
                  child: Text(
                    'Simplified',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 238,
                child: SizedBox(
                  width: 280,
                  height: 43,
                  child: Text(
                    'F  Em7  A7  Dm  Dm/C  Bb  C7  F/E  G7  Gm  C  G/F',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 331,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    'Yesterday, all my troubles seemed so far away',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 382,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    'Now it looks as though theyre here to stay,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 432,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    ' oh I believe in yesterday',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 483,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    'Suddenly, Im not half the man I used to be',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 533,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    'Theres a shadow hanging over me,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 583,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    ' oh yesterday came suddenly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 634,
                child: SizedBox(
                  width: 316,
                  height: 19,
                  child: Text(
                    'Why she had to go I dont know,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 316,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 419,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 469,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 570,
                child: SizedBox(
                  width: 26,
                  height: 15,
                  child: Text(
                    'F/E',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 213,
                top: 520,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 140,
                top: 419,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 175,
                top: 570,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 160,
                top: 419,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 195,
                top: 570,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 223,
                top: 367,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'F',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 368,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'Bb',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 520,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'Bb',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 160,
                top: 620,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'Bb',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 120,
                top: 419,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'Bb',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 155,
                top: 570,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'Bb',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 368,
                child: Container(
                  width: 20,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            'C7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 152,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            'C7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
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
                left: 72,
                top: 419,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'G7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 103,
                top: 570,
                child: SizedBox(
                  width: 20,
                  height: 15,
                  child: Text(
                    'G7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 80,
                top: 316,
                child: SizedBox(
                  width: 32,
                  height: 15,
                  child: Text(
                    'Em7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 22,
                top: 620,
                child: SizedBox(
                  width: 32,
                  height: 15,
                  child: Text(
                    'Em7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 80,
                top: 469,
                child: SizedBox(
                  width: 32,
                  height: 15,
                  child: Text(
                    'Em7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 142,
                top: 316,
                child: SizedBox(
                  width: 22,
                  height: 15,
                  child: Text(
                    'A7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 130,
                top: 469,
                child: SizedBox(
                  width: 22,
                  height: 15,
                  child: Text(
                    'A7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 57,
                top: 620,
                child: SizedBox(
                  width: 22,
                  height: 15,
                  child: Text(
                    'A7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 249,
                top: 316,
                child: SizedBox(
                  width: 30,
                  height: 15,
                  child: Text(
                    'Dm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 42,
                top: 419,
                child: SizedBox(
                  width: 30,
                  height: 15,
                  child: Text(
                    'Dm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 230,
                top: 469,
                child: SizedBox(
                  width: 30,
                  height: 15,
                  child: Text(
                    'Dm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 52,
                top: 570,
                child: SizedBox(
                  width: 30,
                  height: 15,
                  child: Text(
                    'Dm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 79,
                top: 620,
                child: SizedBox(
                  width: 30,
                  height: 15,
                  child: Text(
                    'Dm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 296,
                top: 316,
                child: SizedBox(
                  width: 42,
                  height: 15,
                  child: Text(
                    'Dm/C',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 273,
                top: 469,
                child: SizedBox(
                  width: 42,
                  height: 15,
                  child: Text(
                    'Dm/C',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 112,
                top: 620,
                child: SizedBox(
                  width: 42,
                  height: 15,
                  child: Text(
                    'Dm/C',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      ],
    );
  }
}