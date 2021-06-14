import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.model.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zCoverFilm/view/zCoverFilm.widget.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';

class DetailsFilmView extends StatefulWidget {
  final FilmModel dataDetailsFilm;

  DetailsFilmView({
    this.dataDetailsFilm,
  });

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
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.only(top: zMarginTopScaffold),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ZCoverFilmWidget(positionMCUFilm: bloc.positionMCUFilm),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(${DateFormat.y('pt_Br').format(DateTime.parse(widget.dataDetailsFilm.releaseDate))})",
                          style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: zLayoutSpacerS),
                        Text(
                          widget.dataDetailsFilm.title,
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(height: zLayoutSpacerM),
                        Text(
                          "${widget.dataDetailsFilm.releaseDate} (BR)",
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          "Ação, Aventura, Ficção cientifica",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          widget.dataDetailsFilm.runtime.toString(),
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(height: zLayoutSpacerM),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Título Original".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            widget.dataDetailsFilm.originalTitle,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Título Original".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            widget.dataDetailsFilm.originalLanguage,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sinopse".toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        widget.dataDetailsFilm.overview,
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diretor".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Nome",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Situação".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            widget.dataDetailsFilm.status,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Orçamento".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            widget.dataDetailsFilm.budget.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Receita".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            widget.dataDetailsFilm.revenue.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
