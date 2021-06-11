import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

class DetailsFilmView extends StatefulWidget {
  @override
  _DetailsFilmViewState createState() => _DetailsFilmViewState();
}

class _DetailsFilmViewState extends State<DetailsFilmView> {
  @override
  Widget build(BuildContext context) {
    final DetailsFilmCubit bloc = BlocProvider.of<DetailsFilmCubit>(context);
    final Size size = MediaQuery.of(context).size;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: 120.0,
        isLogoNegative: true,
      ),
      centerTitle: true,
      body: Container(
        child: Center(
          child: Text("Details Film"),
        ),
      ),
    );
  }
}
