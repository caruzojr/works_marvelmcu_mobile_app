import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zPageLoading/view/zPageLoading.widget.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/view/detailsFilm.view.dart';

class DetailsFilmListener extends StatefulWidget {
  @override
  _DetailsFilmListenerState createState() => _DetailsFilmListenerState();
}

class _DetailsFilmListenerState extends State<DetailsFilmListener> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsFilmCubit, DetailsFilmState>(
      bloc: BlocProvider.of<DetailsFilmCubit>(context),
      builder: (BuildContext context, DetailsFilmState state) {
        if (state is DetailsFilmInProgress) {
          return ZPageLoadingWidget();
        } else {
          return DetailsFilmView();
        }
      },
    );
  }
}
