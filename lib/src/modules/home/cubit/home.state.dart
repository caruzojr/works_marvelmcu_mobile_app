part of 'home.cubit.dart';

abstract class HomeState extends Equatable {
  final List<MCUFilmsModel> dataMCUFilms;

  HomeState({this.dataMCUFilms});

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeInProgress extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MCUFilmsModel> dataMCUFilms;

  HomeSuccess({this.dataMCUFilms}) : super(dataMCUFilms: dataMCUFilms);

  @override
  List<Object> get props => [dataMCUFilms];
}

class HomeFailure extends HomeState {
  final String error;

  HomeFailure({@required this.error});

  @override
  List<Object> get props => [error];
}
