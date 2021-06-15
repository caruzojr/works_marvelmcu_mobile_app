import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenuItem/data/constants/all.const.dart';

class ZDrawerMenuItemWidget extends StatelessWidget {
  final String iconItem;
  final String textItem;
  final Function tapItem;

  ZDrawerMenuItemWidget({
    this.iconItem,
    @required this.textItem,
    this.tapItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(paddingBoxItem),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconItem != null
                ? Container(
                    width: iconSizeAreaWidth,
                    height: iconSizeAreaHeight,
                    margin: EdgeInsets.only(right: iconMarginRight),
                    child: SvgPicture.asset(iconItem),
                  )
                : Container(),
            Text(
              textItem,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              color: zGreyColorDefault,
            ),
          ],
        ),
      ),
      onTap: tapItem,
    );
  }
}
