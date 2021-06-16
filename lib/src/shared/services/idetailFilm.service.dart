import 'package:http/http.dart';

abstract class IDetailsFilmService {
  Future<Response> getDetailsFilm(int idFilm);
  Future<Response> getClassificationsFilm(int idFilm);
}
