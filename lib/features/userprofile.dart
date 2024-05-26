import 'package:flutter/material.dart';




class userprofile extends StatelessWidget {
  const userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
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
                left: 31,
                top: 43,
                child: Container(
                  width: 110,
                  height: 110,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/img/ambatukam.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 155,
                top: 43,
                child: SizedBox(
                  width: 130,
                  height: 60,
                  child: Text(
                    'Tyler Maroon',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 155,
                top: 98,
                child: SizedBox(
                  width: 130,
                  height: 23,
                  child: Text(
                    '17, Beginner',
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
                left: 0,
                top: 168,
                child: Container(
                  width: 360,
                  height: 667,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF535353),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(44),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 93,
                top: 176,
                child: SizedBox(
                  width: 174,
                  height: 45,
                  child: Text(
                    'PROGRESS',
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
              const Positioned(
                left: 23,
                top: 221,
                child: SizedBox(
                  width: 174,
                  height: 30,
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 23,
                top: 426,
                child: SizedBox(
                  width: 174,
                  height: 30,
                  child: Text(
                    'Practice',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 251,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 456,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 251,
                child: Container(
                  width: 146,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 456,
                child: Container(
                  width: 210,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 306,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 511,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 361,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 566,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 621,
                child: Container(
                  width: 314,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 23,
                top: 306,
                child: Container(
                  width: 182,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 511,
                child: Container(
                  width: 100,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 361,
                child: Container(
                  width: 117,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 566,
                child: Container(
                  width: 80,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              Positioned(
                left: 23,
                top: 621,
                child: Container(
                  width: 42,
                  height: 44,
                  decoration: const BoxDecoration(color: Color(0xFFEF7F0E)),
                ),
              ),
              const Positioned(
                left: 31,
                top: 261,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Basic chord',
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
                left: 31,
                top: 466,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Beginner',
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
                left: 31,
                top: 316,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Chord library',
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
                left: 31,
                top: 521,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Casual',
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
                left: 31,
                top: 371,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Ear trainer',
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
                left: 31,
                top: 576,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Intermediate',
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
                left: 31,
                top: 631,
                child: SizedBox(
                  width: 174,
                  height: 23,
                  child: Text(
                    'Advanced',
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
                   top: -8,
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
            ],
          ),
        ),
      ],
    );
  }
}