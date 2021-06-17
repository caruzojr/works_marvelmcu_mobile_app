import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/classification_film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/credits_film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.view.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_classifications_film.usecase.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_credits_film.usecase.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_details_film.usecase.dart';

part 'detailsFilm.state.dart';

class DetailsFilmCubit extends Cubit<DetailsFilmState> {
  final int idFilm;
  final int positionMCUFilm;
  final GetDetailsFilmUseCase getDetailsFilmUseCase;
  final GetClassigicationsFilmUseCase getClassificationsFilmUseCase;
  final GetCreditsFilmUseCase getCreditsFilmUseCase;
  FilmViewModel dataFilm;

  DetailsFilmCubit({
    this.idFilm,
    this.positionMCUFilm,
    this.getDetailsFilmUseCase,
    this.getClassificationsFilmUseCase,
    this.getCreditsFilmUseCase,
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
        posterPath: data.posterPath,
        backdropPath: data.backdropPath,
        genres: data.genres,
        runtime: data.runtime,
        originalTitle: data.originalTitle,
        originalLanguage: data.originalLanguage,
        overview: data.overview,
        status: data.status,
        budget: data.budget,
        revenue: data.revenue,
        voteAverage: data.voteAverage,
      );

      getClassificationsFilm(idFilm);
    } catch (error) {
      emit(DetailsFilmFailure(error: error.toString()));
    }
  }

  getClassificationsFilm(int idFilm) async {
    try {
      ClassificationFilmModel data =
          await getClassificationsFilmUseCase(idFilm);
      List<ResultsModels> results = data.results;

      results.map((result) {
        if (result.iso31661 == "BR") {
          dataFilm = dataFilm.copyWith(
              classification: "${result.releaseDates[0].certification}");
          return result;
        }
        return null;
      }).toList();

      getCreditsFilm(idFilm);
    } catch (error) {
      emit(DetailsFilmFailure(error: error.toString()));
    }
  }

  getCreditsFilm(int idFilm) async {
    try {
      CreditsFilmModel data = await getCreditsFilmUseCase(idFilm);
      List<Crew> results = data.crew;

      results.map((result) {
        if (result.job == "Director") {
          print(result.name);
          dataFilm = dataFilm.copyWith(director: "${result.name}");
          return result;
        }
        return null;
      }).toList();

      emit(DetailsFilmSuccess(dataDetailsFilm: dataFilm));
    } catch (error) {
      print(error);
      emit(DetailsFilmFailure(error: error.toString()));
    }
  }
}
