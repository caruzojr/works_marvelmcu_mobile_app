import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';

import 'package:marvel_mcu_app/src/modules/home/view/widgets/zCardMCUFilms/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zCoverFilm/view/zCoverFilm.widget.dart';

class ZCardMCUFilmsWidget extends StatelessWidget {
  final MCUFilmsModel film;
  final int indexPosition;

  ZCardMCUFilmsWidget({
    Key key,
    this.film,
    this.indexPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.detailsFilmRouter, arguments: {
          argumentURL: film.id,
          argumentPositionMCUFilm: indexPosition
        });
      },
      child: Container(
        width: areaBoxCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ZCoverFilmWidget(
              positionMCUFilm: indexPosition,
            ),
            SizedBox(height: zLayoutSpacerS),
            Text(
              film.title,
              style: TextStyle(
                color: zAccentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: zLayoutSpacerXS),
            Text(
              "(${DateFormat.y('pt_Br').format(DateTime.parse(film.releaseDate))})",
              style: TextStyle(
                color: zGreyColorDefault,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
