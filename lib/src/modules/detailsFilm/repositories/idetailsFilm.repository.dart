import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/classification_film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/credits_film.model.dart';

abstract class IDetailsFilmRepository {
  Future<FilmModel> getDetailsFilm(int idFilm);
  Future<ClassificationFilmModel> getClassificarionsFilm(int idFilm);
  Future<CreditsFilmModel> getCreditsFilm(int idFilm);
}
