// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/explore2.dart';

class exploremain extends StatelessWidget {
  const exploremain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Explore1(),
        ]),
      ),
    );
  }
}

class Explore1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF161616)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 724,
                child: Container(
                  width: 360,
                  height: 76,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              Positioned(
                left: 27,
                top: 64,
                child: SizedBox(
                  width: 194,
                  height: 60,
                  child: Text(
                    'EXPLORE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 124,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/beatles.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 312,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/queen.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 124,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Positioned(
                left: 0,
                top: 312,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Positioned(
                left: 0,
                top: 312,
                child: Container(
                  width: 360,
                  height: 188,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Positioned(
                left: 8,
                top: 238,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              explore2()), // Navigate to the next page
                    );
                  },
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
              ),
              Positioned(
                left: 8,
                top: 430,
                child: SizedBox(
                  width: 343,
                  height: 45,
                  child: Text(
                    'BOHEMIAN RHAPSODY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 271,
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
                left: 8,
                top: 459,
                child: SizedBox(
                  width: 220,
                  height: 41,
                  child: Text(
                    'The Queens',
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
                left: 0,
                top: 500,
                child: Container(
                  width: 360,
                  height: 224,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/behemoth.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 500,
                child: Container(
                  width: 360,
                  height: 224,
                  decoration: BoxDecoration(color: Color(0xC12F0202)),
                ),
              ),
              Positioned(
                left: 8,
                top: 654,
                child: SizedBox(
                  width: 343,
                  height: 45,
                  child: Text(
                    'BARTZABEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 683,
                child: SizedBox(
                  width: 220,
                  height: 41,
                  child: Text(
                    'Behemoth',
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
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 65,
                top: 584,
                child: SizedBox(
                  width: 188,
                  height: 70,
                  child: Text(
                    'LOCKED',
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
            ],
          ),
        ),
      ],
    );
  }
}
