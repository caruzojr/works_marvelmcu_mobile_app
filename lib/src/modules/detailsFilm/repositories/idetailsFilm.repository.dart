import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';

abstract class IDetailsFilmRepository {
  Future<FilmModel> getDetailsFilm(int idFilm);
}
