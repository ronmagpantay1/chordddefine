import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/mainmenu2.dart';



class mainlearn extends StatelessWidget {
  const mainlearn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Mainlearn(),
        ]),
      ),
    );
  }
}

class Mainlearn extends StatelessWidget {
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
                  child: Text(
                    'Choose topic \nto learn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 195,
                child: Container(
                  width: 304,
                  height: 97,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF938BEE),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 312,
                child: Container(
                  width: 304,
                  height: 97,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF938BEE),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 429,
                child: Container(
                  width: 304,
                  height: 97,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF938BEE),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              const Positioned(
                left: 55,
                top: 237,
                child: SizedBox(
                  width: 245,
                  height: 48,
                  child: Text(
                    'LEARN BASIC CHORD PROGRESSIONS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 55,
                top: 350,
                child: SizedBox(
                  width: 245,
                  height: 48,
                  child: Text(
                    'CHORD  LIBRARY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 56,
                top: 470,
                child: SizedBox(
                  width: 245,
                  height: 48,
                  child: Text(
                    'EAR TRAINER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
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
                              menu2()), // Navigate to the next page
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