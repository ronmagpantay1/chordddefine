import 'package:flutter/material.dart';
import 'package:guitar_tuner/features/login.dart';

// ignore: camel_case_types
class landing extends StatelessWidget {
  const landing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const Scaffold(
        body: Column(
          children: [
            Logo(),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

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
                left: 25,
                top: 19,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              loginpage()), // Navigate to the next page
                    );
                  },
                  child: Container(
                    width: 310,
                    height: 550,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/chordefine1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 55,
                top: 505,
                child: SizedBox(
                  width: 262,
                  height: 146,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Chor',
                          style: TextStyle(
                            color: Color(0xFFEF7F0E),
                            fontSize: 43,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Define',
                          style: TextStyle(
                            color: Color(0xFFF4E2D7),
                            fontSize: 43,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
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
