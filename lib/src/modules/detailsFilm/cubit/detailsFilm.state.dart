part of 'detailsFilm.cubit.dart';

abstract class DetailsFilmState extends Equatable {
  final FilmModel dataDetailsFilm;

  DetailsFilmState({this.dataDetailsFilm});

  @override
  List<Object> get props => [];
}

class DetailsFilmInitial extends DetailsFilmState {}

class DetailsFilmInProgress extends DetailsFilmState {}

class DetailsFilmSuccess extends DetailsFilmState {
  final FilmModel dataDetailsFilm;

  DetailsFilmSuccess({this.dataDetailsFilm})
      : super(dataDetailsFilm: dataDetailsFilm);

  @override
  List<Object> get props => [dataDetailsFilm];
}

class DetailsFilmFailure extends DetailsFilmState {
  final String error;

  DetailsFilmFailure({@required this.error});

  @override
  List<Object> get props => [error];
}
