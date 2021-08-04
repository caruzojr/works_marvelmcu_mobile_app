import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/repositories/idetailsFilm.repository.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/credits_film.model.dart';

class GetCreditsFilmUseCase {
  final IDetailsFilmRepository repository;
  final int idFilm;

  GetCreditsFilmUseCase({
    @required this.repository,
    this.idFilm,
  });

  Future<CreditsFilmModel> call(idFilm) => repository.getCreditsFilm(idFilm);
}
