import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';

import 'package:marvel_mcu_app/src/shared/utils/nav.util.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDivider/view/zDivider.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenu/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenuItem/view/zDrawerMenuItem.widget.dart';

class ZDrawerMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: drawerElevation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: headerAreaHeight,
                color: headerAreabackground,
              ),
              Positioned(
                top: headerCloseBtnPositionTop,
                right: headerCloseBtnPositionRight,
                child: InkWell(
                  child: Icon(
                    Icons.close,
                    color: zAccentColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                left: headerLogoPositionLeft,
                bottom: headerLogoPositionBottom,
                child: ZLogoWidget(
                  sizeLogoWidth: headerLogoSizeWidth,
                  isLogoNegative: headerIsLogoNegative,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: paddingTitleSectionHorizontal,
              vertical: paddingTitleSectionVertical,
            ),
            child: Text(
              titleSection1.toUpperCase(),
              style: TextStyle(
                color: zGreyColorDefault,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ZDividerWidget(),
          ZDrawerMenuItemWidget(
            iconItem: iconSection1Item1,
            textItem: textSection1Item1,
            tapItem: () {
              pushNamed(context, Routes.homeRouter);
            },
          ),
          ZDividerWidget(),
          ZDrawerMenuItemWidget(
            iconItem: iconSection1Item2,
            textItem: textSection1Item2,
            tapItem: () {
              pushNamed(context, Routes.aboutRouter);
            },
          ),
          ZDividerWidget(),
          Spacer(),
          Container(
            padding: EdgeInsets.all(paddingVersionBuild),
            child: Text(
              versionBuildProject.toUpperCase(),
              style: TextStyle(
                fontSize: zFontSizeXS,
                color: zGreyColorDefault,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
