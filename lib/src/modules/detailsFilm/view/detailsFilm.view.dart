import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zCoverFilm/view/zCoverFilm.widget.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';

class DetailsFilmView extends StatefulWidget {
  @override
  _DetailsFilmViewState createState() => _DetailsFilmViewState();
}

class _DetailsFilmViewState extends State<DetailsFilmView> {
  @override
  Widget build(BuildContext context) {
    final DetailsFilmCubit bloc = BlocProvider.of<DetailsFilmCubit>(context);
    final Size size = MediaQuery.of(context).size;

    final Map arguments = ModalRoute.of(context).settings.arguments;
    //final int idFilm = arguments["id"];
    final int positionMCUFilm = arguments["positionMCUFilm"];

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
                    ZCoverFilmWidget(positionMCUFilm: positionMCUFilm),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2011",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: zLayoutSpacerS),
                        Text(
                          "Nome do Filme aqui",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: zLayoutSpacerM),
                        Text(
                          "29/11/2011 (BR)",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Ação, Aventura, Ficção cientifica",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "2h 4m",
                          style: TextStyle(color: Colors.white),
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
                            "Título Original",
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
                            "Título Original".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Inglês",
                            style: TextStyle(color: Colors.white),
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
                        "Conteúdo da descrição do filme",
                        style: TextStyle(color: Colors.white),
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
                            "Lançado",
                            style: TextStyle(color: Colors.white),
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
                            "140,000,000.00",
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
                            "Receita".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "370,569,774.00",
                            style: TextStyle(color: Colors.white),
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
