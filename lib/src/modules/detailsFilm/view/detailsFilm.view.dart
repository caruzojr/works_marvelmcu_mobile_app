import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/utils/pipe_decoder.util.dart';
import 'package:marvel_mcu_app/src/shared/utils/minutes_in_hours.util.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zCoverFilm/view/zCoverFilm.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/film.view.model.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/cubit/detailsFilm.cubit.dart';

class DetailsFilmView extends StatefulWidget {
  final FilmViewModel dataDetailsFilm;

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
    final NumberFormat price = NumberFormat("#,##0.00", "en");

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: 120.0,
        isLogoNegative: true,
      ),
      centerTitle: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              color: Colors.black,
            ),
            Container(
              child: Positioned(
                top: 190,
                right: 32,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(
                      color: zTextColorDefault,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.dataDetailsFilm.voteAverage.toString(),
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 220),
              padding: EdgeInsets.all(zLayoutPaddingM),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: zLayoutMarginM),
                        child: ZCoverFilmWidget(
                          positionMCUFilm: bloc.positionMCUFilm,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "(${DateFormat.y('pt_Br').format(DateTime.parse(widget.dataDetailsFilm.releaseDate))})",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: zLayoutSpacerXS),
                          Container(
                            width: size.width - 190,
                            child: Text(
                              widget.dataDetailsFilm.title,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          SizedBox(height: zLayoutSpacerL),
                          Text(
                            "${DateFormat.yMd('pt_Br').format(DateTime.parse(widget.dataDetailsFilm.releaseDate))} (BR)",
                          ),
                          Container(
                            width: size.width - 190,
                            height: 16,
                            child: ListView.separated(
                              separatorBuilder: (context, index) => Text(", "),
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.dataDetailsFilm.genres.length,
                              itemBuilder: (context, index) {
                                return Text(
                                    widget.dataDetailsFilm.genres[index].name);
                              },
                            ),
                          ),
                          Text(
                            minutesInHours(widget.dataDetailsFilm.runtime),
                          ),
                          SizedBox(height: zLayoutSpacerM),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: zLayoutPaddingXS,
                                vertical: zLayoutPaddingXXS),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: zTextColorDefault,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                widget.dataDetailsFilm.classification,
                                style: TextStyle(fontSize: zFontSizeM),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: zLayoutSpacerXXL),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Título Original".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(widget.dataDetailsFilm.originalTitle),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Idioma Original".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(
                              PipeDecoderUtils.initialsIdiomaDecoder(
                                  widget.dataDetailsFilm.originalLanguage),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: zLayoutSpacerXL),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sinopse".toUpperCase()),
                        SizedBox(height: zLayoutSpacerS),
                        Text(widget.dataDetailsFilm.overview),
                      ],
                    ),
                  ),
                  SizedBox(height: zLayoutSpacerXL),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Diretor".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(widget.dataDetailsFilm.director),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Situação".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(
                              PipeDecoderUtils.situationDecoder(
                                  widget.dataDetailsFilm.status),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: zLayoutSpacerXL),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Orçamento".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(
                              "\$ ${price.format(widget.dataDetailsFilm.budget)}",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / 2) - 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Receita".toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(
                              "\$ ${price.format(widget.dataDetailsFilm.revenue)}",
                              style: Theme.of(context).textTheme.headline3,
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
      ),
    );
  }
}
