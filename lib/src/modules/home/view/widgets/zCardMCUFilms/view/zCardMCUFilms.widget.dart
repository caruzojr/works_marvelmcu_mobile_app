import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';

import 'package:marvel_mcu_app/src/modules/home/view/widgets/zCardMCUFilms/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';

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
        print("vc clicou em: ${film.title}");
        Navigator.of(context).pushNamed(Routes.detailsFilmRouter);
      },
      child: Container(
        width: areaBoxCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: sizeCoverWidth,
                  height: sizeCoverHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(zBorderRadiusS),
                    color: zGreyColorDefault,
                  ),
                ),
                Positioned(
                  top: positionTagNumberTop,
                  right: positionTagNumberRight,
                  child: Container(
                    width: sizeTagNumberWidth,
                    height: sizeTagNumberHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radiusTagNumber),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        indexPosition.toString(),
                        style: TextStyle(
                          fontSize: zFontSizeM,
                          fontWeight: FontWeight.bold,
                          color: zGreyColorDefault,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
