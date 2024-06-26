import 'dart:ui';

import "package:flutter/material.dart";
import 'package:rive/rive.dart';

class RiveBackground extends StatelessWidget {
  const RiveBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 71, 71),
      body: Stack(
        children: [
          const RiveAnimation.asset("assets/neptune.riv",),
          Positioned.fill(

              child: BackdropFilter(

                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: const SizedBox(),
              ),
            ),
        ],
      ),
    );
  }
}