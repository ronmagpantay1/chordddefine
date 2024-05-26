// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/login.dart';
import 'package:guitar_tuner/features/welcome.dart';



class loginn extends StatelessWidget {
  const loginn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Login(),
        ]),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
         
              const Positioned(
                left: 50,
                top: 253,
                child: SizedBox(
                  width: 259,
                  height: 77,
                  child: Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 542,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()), // Navigate to the next page
                    );
                  },
                  child: Container(
                    width: 181,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'ENTER',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFEF7F0E),
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
              Positioned(
                left: 67,
                top: 355,
                child: Opacity(
                  opacity: 0.72,
                  child: Container(
                    width: 232,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF161616),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 64,
                top: 435,
                child: Opacity(
                  opacity: 0.72,
                  child: Container(
                    width: 232,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF161616),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
             
              const Positioned(
                left: 84,
                top: 371,
                child: SizedBox(
                  width: 212,
                  height: 38,
                  child: Text(
                    'email address',
                    style: TextStyle(
                      color: Color(0xFF636363),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 84,
                top: 451,
                child: SizedBox(
                  width: 212,
                  height: 38,
                  child: Text(
                    'password',
                    style: TextStyle(
                      color: Color(0xFF636363),
                      fontSize: 16,
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
                      MaterialPageRoute(builder: (context) => loginpage()), // Navigate to the next page
                    );
                 },
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