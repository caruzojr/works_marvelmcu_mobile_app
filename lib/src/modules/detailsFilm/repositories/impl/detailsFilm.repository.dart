import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/repositories/idetailsFilm.repository.dart';
import 'package:marvel_mcu_app/src/shared/services/idetailFilm.service.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';

class DetailsFilmRepository implements IDetailsFilmRepository {
  final IDetailsFilmService service;

  DetailsFilmRepository({@required this.service});

  @override
  Future<FilmModel> getDetailsFilm(int idFilm) async {
    final result = await service.getDetailsFilm(idFilm);

    final jsonResponse = convert.json.decode(result.body);
    FilmModel detailFilm = new FilmModel.fromJson(jsonResponse);

    return detailFilm;
  }
}
