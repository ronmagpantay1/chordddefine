// ignore_for_file: use_build_context_synchronously

import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:guitar_tuner/features/home/presentation/pages/metronome_page.dart";
import "package:rive/rive.dart" as rv;
import "package:syncfusion_flutter_gauges/gauges.dart";
import 'package:permission_handler/permission_handler.dart';

import "../bloc/home_bloc.dart";
import "../bloc/tunings_cubit/tunings_cubit.dart";
import "../utils/dialogs.dart";

class DetectChord extends StatefulWidget {
  const DetectChord({super.key});

  @override
  State<DetectChord> createState() => _DetectChordState();
}

class _DetectChordState extends State<DetectChord> {
  List standard = ["E", "A", "D", "G", "B", "E"];
  var selectedIntrumentIndex = 3;
  var selectedTuningIndex = 0;
  String openr = "A#DA#D#GC";
  List st = [];
  List<String> chars = [];

  @override
  void initState() {
    super.initState();
    recordPerm();
    BlocProvider.of<HomeBloc>(context).add(const StartRecordingEvent());
  }

  @override
  void dispose() {
    super.dispose();
    BlocProvider.of<HomeBloc>(context).add(const StopRecordingEvent());
    HomeBloc().close();
  }

  recordPerm() async {
    if (await Permission.microphone.request().isGranted) {
      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(
      //   "Permission Granted"
      // )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const rv.RiveAnimation.asset(
            "assets/shapes.riv",
          ),
          const rv.RiveAnimation.asset("assets/shapes.riv",
              alignment: Alignment.center),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: const SizedBox(),
            ),
          ),
          Container(
            // color: const Color.fromARGB(255, 5, 155, 155),
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    colors: <Color>[
                  Color.fromRGBO(3, 0, 28, 0.6),
                  Color.fromRGBO(17, 20, 42, 0.723)
                ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    stops: <double>[
                  0.25,
                  0.75
                ])),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Center(
                  child: Column(children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.menu,
                              size: 30, color: Colors.transparent),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Center(
                            child: context.read<HomeBloc>().status ==
                                    "TuningStatus.undefined"
                                ? const SizedBox(
                                    height: 80,
                                    width: 80,
                                  )
                                : Container(
                                    height: 250,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: context.read<HomeBloc>().status ==
                                                "TuningStatus.tuned"
                                            ? Color.fromARGB(255, 250, 120, 68)
                                            : Color.fromARGB(255, 250, 120, 68),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              spreadRadius: 20,
                                              color: context
                                                          .read<HomeBloc>()
                                                          .status ==
                                                      "TuningStatus.tuned"
                                                  ? Color.fromARGB(255, 250, 120, 68)
                                                  : Color.fromARGB(255, 250, 120, 68))
                                        ]), 
                                    child: Center(
                                      child: Text(
                                        context.watch<HomeBloc>().note,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            // context.read<HomeBloc>().status =="TuningStatus.tuned"?Colors.green: Colors.red,
                                            fontSize: 200.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                          ),
                        ),
        
                      ],
                    ),
                    const Center(
                        child: Text(
                      "",
                      
                      // context.read<HomeBloc>().status,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold),
                    )),
                    const Spacer(),
                  ]),
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }

}
