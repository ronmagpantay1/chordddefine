part of 'tunings_cubit.dart';

abstract class TuningsState extends Equatable {
  const TuningsState();

  @override
  List<Object> get props => [];
}

class TuningsInitial extends TuningsState {}
class TuningsLoadedState extends TuningsState {
  final TuningsModel data;
  final int selectedInstrument;

  const TuningsLoadedState({required this.data,required this.selectedInstrument });
  
  @override
  List<Object> get props => [data,selectedInstrument];

}
class TuningsLoadingState extends TuningsState {}
class TuningsErrorState extends TuningsState {}

class SelectedInstrumentState extends TuningsState {
  final String instrument;

  const SelectedInstrumentState({required this.instrument});
  
  @override
  List<Object> get props => [instrument];
}
class SelectedTuningState extends TuningsState {
  final String tuning;

  const SelectedTuningState({required this.tuning});
  
  @override
  List<Object> get props => [tuning];
}
