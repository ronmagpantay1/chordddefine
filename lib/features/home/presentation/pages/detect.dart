// ignore_for_file: use_build_context_synchronously

import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:guitar_tuner/features/home/presentation/pages/metronome_page.dart";
import "package:rive/rive.dart" as rv;
import "package:syncfusion_flutter_gauges/gauges.dart";
import 'package:permission_handler/permission_handler.dart';
import "../bloc/home_bloc.dart";
import "../bloc/tunings_cubit/tunings_cubit.dart";
import "../utils/dialogs.dart";
import 'package:tflite/tflite.dart';
import 'package:camera/camera.dart';
import 'package:guitar_tuner/main.dart';

class DetectChord extends StatefulWidget {
  const DetectChord({super.key});

  @override
  State<DetectChord> createState() => _DetectChordState();
}

class _DetectChordState extends State<DetectChord> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';

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
    loadCamera();
    loadmodel();
    BlocProvider.of<HomeBloc>(context).add(const StartRecordingEvent());
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  loadCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      }
    });
  }

  Future<void> toggleCamera() async {
    final lensDirection = cameraController!.description.lensDirection;
    CameraDescription newDescription;

    if (lensDirection == CameraLensDirection.front) {
      newDescription = cameras!.firstWhere(
        (description) => description.lensDirection == CameraLensDirection.back,
      );
    } else {
      newDescription = cameras!.firstWhere(
        (description) => description.lensDirection == CameraLensDirection.front,
      );
    }

    if (newDescription != null) {
      cameraController =
          CameraController(newDescription, ResolutionPreset.medium);

      try {
        await cameraController!
            .initialize(); // Use the existing cameraController
        if (mounted) {
          setState(() {
            // You may need to stop the previous image stream here, e.g.:
            // cameraController!.stopImageStream();

            // Restart the image stream with the new controller:
            cameraController!.startImageStream((imageStream) {
              cameraImage = imageStream;
              runModel();
            });
          });
        }
      } catch (e) {
        print('Error initializing camera: $e');
      }
    } else {
      print('Asked camera not available');
    }
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
          bytesList: cameraImage!.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage!.height,
          imageWidth: cameraImage!.width,
          imageMean: 127.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 2,
          threshold: 0.1,
          asynch: true);
      predictions!.forEach((element) {
        setState(() {
          output = element['label'];
        });
      });
    }
  }

  loadmodel() async {
    await Tflite.loadModel(
        model: "assets/mudel.tflite", labels: "assets/labels.txt");
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
    BlocProvider.of<HomeBloc>(context).add(const StopRecordingEvent());
    HomeBloc().close();
  }

  recordPerm() async {
    if (await Permission.microphone.request().isGranted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Permission Granted")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChorDefine')),
      body: Stack(
        children: [
          // Rive Animations (Background)
          const rv.RiveAnimation.asset("assets/shapes.riv"),
          const rv.RiveAnimation.asset("assets/shapes.riv",
              alignment: Alignment.center),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: const SizedBox(),
            ),
          ),

          // Main Content
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  Color.fromRGBO(3, 0, 28, 0.6),
                  Color.fromRGBO(17, 20, 42, 0.723)
                ],
                stops: <double>[0.25, 0.75],
              ),
            ),
            child: Column(
              children: [
                // Audio Detection (Top)
                Padding(
                  padding:
                      const EdgeInsets.all(20.0), // Add padding around the note
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return Container(
                        height: 100, // Adjust height as needed
                        width: 100, // Adjust width as needed
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(50), // Circular shape
                          color:
                              Colors.white, // Background color for visibility
                        ),
                        child: Center(
                          child: Text(
                            context.watch<HomeBloc>().note,
                            style: const TextStyle(
                              fontSize: 60.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Camera Preview
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height *
                        0.5, // Adjust camera height as needed
                    width: MediaQuery.of(context).size.width,
                    child: !cameraController!.value.isInitialized
                        ? Container()
                        : AspectRatio(
                            aspectRatio: cameraController!.value.aspectRatio,
                            child: CameraPreview(cameraController!),
                          ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      toggleCamera();
                    },
                    icon: const Icon(
                      Icons.camera_front,
                      size: 30,
                    )),

                // Chord Detection (Bottom)
                Text(
                  output,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
