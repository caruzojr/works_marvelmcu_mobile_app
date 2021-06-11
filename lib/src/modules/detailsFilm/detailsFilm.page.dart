import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/view/detailsFilm.listener.dart';

class DetailsFilmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailsFilmCubit(),
      child: DetailsFilmListener(),
    );
  }
}
