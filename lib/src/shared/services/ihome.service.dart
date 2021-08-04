import 'package:http/http.dart';

abstract class IHomeService {
  Future<Response> getMCUFilms();
}
