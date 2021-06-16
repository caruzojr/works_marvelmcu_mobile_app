import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/repositories/idetailsFilm.repository.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/classification_film.model.dart';

class GetClassigicationsFilmUseCase {
  final IDetailsFilmRepository repository;
  final int idFilm;

  GetClassigicationsFilmUseCase({
    @required this.repository,
    this.idFilm,
  });

  Future<ClassificationFilmModel> call(idFilm) =>
      repository.getClassificarionsFilm(idFilm);
}
