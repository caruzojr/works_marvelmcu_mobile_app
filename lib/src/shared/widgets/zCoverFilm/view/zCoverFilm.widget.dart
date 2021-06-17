import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zCoverFilm/data/constants/all.const.dart';

class ZCoverFilmWidget extends StatelessWidget {
  final int positionMCUFilm;
  final String coverFilm;

  ZCoverFilmWidget({
    Key key,
    this.positionMCUFilm,
    this.coverFilm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: sizeCoverWidth,
          height: sizeCoverHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(zBorderRadiusS),
            image: DecorationImage(
              image: NetworkImage(
                  "${BaseURL.urlTheMoveDB}${SizeImages.imagesW220}$coverFilm"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: positionTagNumberTopRight,
          right: positionTagNumberTopRight,
          child: Container(
            width: sizeTagNumberWidthHeight,
            height: sizeTagNumberWidthHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radiusTagNumber),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                positionMCUFilm.toString(),
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
    );
  }
}
