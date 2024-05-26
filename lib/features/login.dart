import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/loginn.dart';
import 'package:guitar_tuner/features/signup.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          LoginSignup(),
        ]),
      ),
    );
  }
}

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 700,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Positioned(
                child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/jimi.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 400,
                  height: 826,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 2,
                right: 0,
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/chordefinewhite.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 53,
                top: 240,
                child: SizedBox(
                  width: 259,
                  height: 77,
                  child: Text(
                    'ChorDefine',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 500,
                child: GestureDetector(
                  onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signupp()), // Navigate to the next page
                    );
                  },
                  child: Container(
                    width: 219,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF161616),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 400,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginn()), // Navigate to the next page
                    );
                  },
                  child: Container(
                    width: 219,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEF7F0E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'LOG IN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
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
