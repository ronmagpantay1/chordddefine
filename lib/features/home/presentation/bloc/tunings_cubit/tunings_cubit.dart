import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:guitar_tuner/features/home/data/models/tunings_model.dart';

part 'tunings_state.dart';

class TuningsCubit extends Cubit<TuningsState> {
  TuningsCubit() : super(TuningsInitial()){
    fetchTunings();
  }


  void fetchTunings()async{
    emit(TuningsLoadingState());
    try {
    final String response = 
          await rootBundle.loadString('assets/tunings.json');
    final data = await json.decode(response);
    emit(TuningsLoadedState(data:TuningsModel.fromJson(data),selectedInstrument: 3));
    log(data.toString());
    } on Exception {
        emit(TuningsErrorState());

    }
  }
}