import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';

import 'package:marvel_mcu_app/src/shared/services/ihome.service.dart';
import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/modules/home/repositories/ihome.repository.dart';

class HomeRepository implements IHomeRepository {
  final IHomeService service;

  HomeRepository({@required this.service});

  @override
  Future<List<MCUFilmsModel>> getMCUFilms() async {
    final result = await service.getMCUFilms();

    List mcuFilms = convert.json.decode(result.body);

    final listMCUFilms = mcuFilms
        .map<MCUFilmsModel>((map) => MCUFilmsModel.fromJson(map))
        .toList();

    return listMCUFilms;
  }
}
