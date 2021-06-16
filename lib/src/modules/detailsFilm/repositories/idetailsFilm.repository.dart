import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/classification_film.model.dart';

abstract class IDetailsFilmRepository {
  Future<FilmModel> getDetailsFilm(int idFilm);
  Future<List<ClassificationFilmModel>> getClassificarionsFilm(int idFilm);
}
