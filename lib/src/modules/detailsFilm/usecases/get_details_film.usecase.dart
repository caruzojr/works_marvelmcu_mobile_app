import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/repositories/idetailsFilm.repository.dart';

class GetDetailsFilmUseCase {
  final IDetailsFilmRepository repository;
  final int idFilm;

  GetDetailsFilmUseCase({
    @required this.repository,
    this.idFilm,
  });

  Future<FilmModel> call(idFilm) => repository.getDetailsFilm(idFilm);
}
