import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zDivider/data/constants/all.const.dart';

class ZDividerWidget extends StatelessWidget {
  final Color color;
  final double colorOpacity;
  final double height;
  final double thickness;

  ZDividerWidget({
    this.color = Colors.black,
    this.colorOpacity = dividerContentColorOpacity,
    this.height = dividerContentHeight,
    this.thickness = dividerContentThickness,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color.withOpacity(colorOpacity),
      height: height,
      thickness: thickness,
    );
  }
}
