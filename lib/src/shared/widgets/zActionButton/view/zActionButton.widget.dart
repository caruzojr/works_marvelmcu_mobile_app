import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zActionButton/constants/all.const.dart';

class ZActionButton extends StatelessWidget {
  final String textButton;
  final String iconButton;
  final Function actionButton;

  const ZActionButton({
    Key key,
    this.textButton,
    this.iconButton,
    this.actionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: actionButton,
      child: Stack(
        children: [
          Container(
            width: sizeButtonWidth,
            height: sizeButtonHeight,
            padding: EdgeInsets.all(zLayoutPaddingS),
            decoration: BoxDecoration(
              color: zGreyColorDefault,
              borderRadius: BorderRadius.all(
                Radius.circular(zBorderRadiusS),
              ),
            ),
          ),
          Positioned(
            top: zLayoutPaddingS,
            right: zLayoutPaddingS,
            child: Container(
              child: SvgPicture.asset(
                iconButton,
                color: Colors.white,
                height: sizeIconHeight,
              ),
            ),
          ),
          Positioned(
            left: zLayoutPaddingS,
            bottom: zLayoutPaddingS,
            child: Text(
              textButton.toUpperCase(),
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontSize: zFontSizeXS,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
