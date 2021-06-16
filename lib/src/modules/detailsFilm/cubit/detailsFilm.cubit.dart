import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.view.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_classifications_film.usecase.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_details_film.usecase.dart';

part 'detailsFilm.state.dart';

class DetailsFilmCubit extends Cubit<DetailsFilmState> {
  final int idFilm;
  final int positionMCUFilm;
  final GetDetailsFilmUseCase getDetailsFilmUseCase;
  final GetClassigicationsFilmUseCase getClassificationsFilmUseCase;
  FilmViewModel dataFilm;

  DetailsFilmCubit({
    this.idFilm,
    this.positionMCUFilm,
    this.getDetailsFilmUseCase,
    this.getClassificationsFilmUseCase,
    this.dataFilm,
  }) : super(DetailsFilmInitial()) {
    getDetailsFilm(idFilm);
  }

  getDetailsFilm(int idFilm) async {
    emit(DetailsFilmInProgress());

    try {
      FilmModel data = await getDetailsFilmUseCase(idFilm);

      dataFilm = FilmViewModel(
        releaseDate: data.releaseDate,
        title: data.title,
        genres: data.genres,
        runtime: data.runtime,
        originalTitle: data.originalTitle,
        originalLanguage: data.originalLanguage,
        overview: data.overview,
        status: data.status,
        budget: data.budget,
        revenue: data.revenue,
      );

      getClassificationsFilm(idFilm);
    } catch (error) {
      emit(DetailsFilmFailure(error: error.toString()));
    }
  }

  getClassificationsFilm(int idFilm) async {
    dataFilm = dataFilm.copyWith(classification: "18");

    emit(DetailsFilmSuccess(dataDetailsFilm: dataFilm));
    // try {
    //   FilmModel data = await getDetailsFilmUseCase(idFilm);
    //   emit(DetailsFilmSuccess(dataDetailsFilm: data));
    // } catch (error) {
    //   emit(DetailsFilmFailure(error: error.toString()));
    // }
  }
}
