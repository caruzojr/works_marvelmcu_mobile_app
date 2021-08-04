import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/modules/home/repositories/ihome.repository.dart';

class GetMCUFilmsUseCase {
  final IHomeRepository repository;

  GetMCUFilmsUseCase({
    @required this.repository,
  });

  Future<List<MCUFilmsModel>> call() => repository.getMCUFilms();
}
