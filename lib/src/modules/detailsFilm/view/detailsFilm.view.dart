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
import 'package:marvel_mcu_app/src/modules/detailsFilm/data/constants/all.const.dart';
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
    final NumberFormat price = maskPrice;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: isLogoNegative,
      ),
      centerTitle: centerTitle,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: imgBackgroundSizeHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imgBackgroundUrlBase +
                      "${widget.dataDetailsFilm.backdropPath}"),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Container(
              width: size.width,
              height: shadowBackgroundSizeHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    shadowBackgroundInitialState,
                    shadowBackgroundEndState,
                  ],
                ),
              ),
            ),
            Container(
              child: Positioned(
                top: votePositionTop,
                right: votePositionRight,
                child: Container(
                  width: voteCircleSize,
                  height: voteCircleSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(voteCircleSize),
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
              margin: EdgeInsets.only(top: contentMarginTop),
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
                          coverFilm: widget.dataDetailsFilm.posterPath,
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
                            width: size.width - contentHeaderSizeBox,
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
                            width: size.width - contentHeaderSizeBox,
                            height: contentGenderSizeHeight,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  Text(contentGenderSeparated),
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
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(originalTitle.toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(widget.dataDetailsFilm.originalTitle),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(originalLanguage.toUpperCase()),
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
                        Text(synopsis.toUpperCase()),
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
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(director.toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(widget.dataDetailsFilm.director),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(status.toUpperCase()),
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
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(budget.toUpperCase()),
                            SizedBox(height: zLayoutSpacerS),
                            Text(
                              "\$ ${price.format(widget.dataDetailsFilm.budget)}",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width / numberColumnContent) -
                            gapColumnContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(revenue.toUpperCase()),
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
