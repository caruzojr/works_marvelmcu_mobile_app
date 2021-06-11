import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
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
      },
      child: Container(
        width: 127,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 127,
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(zBorderRadiusS),
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: 6, right: 6),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        indexPosition.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: zGreyColorDefault,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              film.title,
              style: TextStyle(
                color: zAccentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
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
