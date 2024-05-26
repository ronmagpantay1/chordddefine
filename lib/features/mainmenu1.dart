import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/mainmenu2.dart';




class mainmenu1 extends StatelessWidget {
  const mainmenu1({super.key});

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
          height: 800,
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
              const Positioned(
                left: 36,
                top: 129,
                child: SizedBox(
                  width: 130,
                  height: 205,
                  child: Text(
                    'Learn the basics, navigate to the different chord shapes and learn from the ground up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 207,
                top: 149,
                child: SizedBox(
                  width: 128,
                  height: 205,
                  child: Text(
                    'Play along with songs, using chords and lyrics',
                    style: TextStyle(
                      color: Color(0xFFF4E2D7),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 36,
                top: 314,
                child: SizedBox(
                  width: 120,
                  height: 205,
                  child: Text(
                    'Progress through tutorials and learn chord basics at different difficulty levels.',
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
                left: 203,
                top: 346,
                child: SizedBox(
                  width: 135,
                  height: 205,
                  child: Text(
                    'Ensure precise instrument tuning for optimal sound quality and performance.',
                    style: TextStyle(
                      color: Color(0xFFEF5225),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 592,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menu2()), // Navigate to the next page
                      );
                    },
                    child: const SizedBox(
                      width: 212,
                      height: 30,
                      child: Center(
                        child: Text(
                          'GOT IT!',
                          // rest of text styling
                        ),
                      ),
                    ),
                  )),
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
                 onPressed: () { },
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