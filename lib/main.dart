import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_tuner/features/home/presentation/bloc/home_bloc.dart';

import 'features/home/presentation/bloc/tunings_cubit/tunings_cubit.dart';
import 'features/home/presentation/pages/detect.dart';
import 'features/home/presentation/pages/home_page.dart';

import 'package:guitar_tuner/features/explore2.dart';
import 'package:guitar_tuner/features/exploremain.dart';
import 'package:guitar_tuner/features/login.dart';
import 'package:guitar_tuner/features/loginn.dart';
import 'package:guitar_tuner/features/logo.dart';
import 'package:guitar_tuner/features/mainlearn.dart';
import 'package:guitar_tuner/features/mainmenu1.dart';
import 'package:guitar_tuner/features/mainmenu2.dart';
import 'package:guitar_tuner/features/practice2.dart';
import 'package:guitar_tuner/features/practice3.dart';
import 'package:guitar_tuner/features/practice4.dart';
import 'package:guitar_tuner/features/practice5.dart';
import 'package:guitar_tuner/features/signup.dart';
import 'package:guitar_tuner/features/userprofile.dart';
import 'package:guitar_tuner/features/welcome.dart';
import 'package:guitar_tuner/features/profile.dart';
import 'package:guitar_tuner/features/practicemain.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(),
          ),
          BlocProvider<TuningsCubit>(
            create: (context) => TuningsCubit(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: 
          // const MetronomePage()
          // const HomePage(),
           const landing()
          // const RiveBackground(),
        ));
  }
}


