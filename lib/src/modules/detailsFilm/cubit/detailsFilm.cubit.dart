import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_classifications_film.usecase.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_details_film.usecase.dart';

part 'detailsFilm.state.dart';

class DetailsFilmCubit extends Cubit<DetailsFilmState> {
  final int idFilm;
  final int positionMCUFilm;
  final GetDetailsFilmUseCase getDetailsFilmUseCase;
  final GetClassigicationsFilmUseCase getClassificationsFilmUseCase;

  DetailsFilmCubit({
    this.idFilm,
    this.positionMCUFilm,
    this.getDetailsFilmUseCase,
    this.getClassificationsFilmUseCase,
  }) : super(DetailsFilmInitial()) {
    getDetailsFilm(idFilm);
    getClassificationsFilm(idFilm);
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

  getClassificationsFilm(int idFilm) async {
    print('bateu aqui para pegar a classificação');
    print('precisa de um refactory e ter uma viewmodel para esta tela');
    print(
        'pois iremos bater em duas APIs para compor uma informação em tela, então, com uma viewmodel facilita a leitura dos dados na ui, pois teremos apenas um objeto para se trabalhar');
    // emit(DetailsFilmInProgress());

    // try {
    //   FilmModel data = await getDetailsFilmUseCase(idFilm);
    //   emit(DetailsFilmSuccess(dataDetailsFilm: data));
    // } catch (error) {
    //   emit(DetailsFilmFailure(error: error.toString()));
    // }
  }
}
