import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/modules/home/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: 120.0,
        isLogoNegative: true,
      ),
      centerTitle: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: backgroundPage,
          ),
          Container(
            margin: EdgeInsets.only(top: zMarginTopScaffold),
            padding: EdgeInsets.all(zLayoutPaddingM),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Positioned(
                  bottom: 0,
                  child: Container(
                    child: Text("Olá Mundo"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
