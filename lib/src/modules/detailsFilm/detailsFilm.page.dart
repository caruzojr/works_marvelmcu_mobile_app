import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/repositories/impl/detailsFilm.repository.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/usecases/get_details_film.usecase.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/view/detailsFilm.listener.dart';
import 'package:marvel_mcu_app/src/shared/services/impl/detailsFilm.service.dart';

class DetailsFilmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments;
    final int idFilm = arguments["id"];
    final int positionMCUFilm = arguments["positionMCUFilm"];

    return BlocProvider(
      create: (_) => DetailsFilmCubit(
        idFilm: idFilm,
        positionMCUFilm: positionMCUFilm,
        getDetailsFilmUseCase: GetDetailsFilmUseCase(
          repository: DetailsFilmRepository(
            service: DetailsFilmService(context: context),
          ),
        ),
      ),
      child: DetailsFilmListener(),
    );
  }
}
