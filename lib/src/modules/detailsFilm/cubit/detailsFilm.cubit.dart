import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_details_film.usecase.dart';

part 'detailsFilm.state.dart';

class DetailsFilmCubit extends Cubit<DetailsFilmState> {
  final int idFilm;
  final int positionMCUFilm;
  final GetDetailsFilmUseCase getDetailsFilmUseCase;

  DetailsFilmCubit({
    this.idFilm,
    this.positionMCUFilm,
    this.getDetailsFilmUseCase,
  }) : super(DetailsFilmInitial()) {
    getDetailsFilm(idFilm);
  }

  getDetailsFilm(int idFilm) async {
    emit(DetailsFilmInProgress());

    try {
      FilmModel data = await getDetailsFilmUseCase(idFilm);
      emit(DetailsFilmSuccess(dataDetailsFilm: data));
    } catch (error) {
      emit(DetailsFilmFailure(error: error.toString()));
    }
  }
}
