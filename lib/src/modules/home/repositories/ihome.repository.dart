import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';

abstract class IHomeRepository {
  Future<List<MCUFilmsModel>> getMCUFilms();
}
