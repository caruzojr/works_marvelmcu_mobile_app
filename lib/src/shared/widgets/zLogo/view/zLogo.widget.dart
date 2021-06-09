import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zLogo/data/constants/all.const.dart';

class ZLogoWidget extends StatelessWidget {
  final double sizeLogoWidth;
  final bool isLogoNegative;

  ZLogoWidget({
    this.sizeLogoWidth = sizeDefaultLogoWidth,
    this.isLogoNegative = false,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isLogoNegative ? fileDefaultLogoNegative : fileDefaultLogo,
      semanticsLabel: logoSemanticsLabel,
      width: sizeLogoWidth,
    );
  }
}
