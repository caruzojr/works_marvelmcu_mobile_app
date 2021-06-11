part of 'detailsFilm.cubit.dart';

abstract class DetailsFilmState extends Equatable {
  @override
  List<Object> get props => [];
}

class DetailsFilmInitial extends DetailsFilmState {}

class DetailsFilmInProgress extends DetailsFilmState {}

class DetailsFilmSuccess extends DetailsFilmState {}

class DetailsFilmFailure extends DetailsFilmState {
  final String error;

  DetailsFilmFailure({@required this.error});

  @override
  List<Object> get props => [error];
}
