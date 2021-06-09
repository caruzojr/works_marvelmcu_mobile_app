import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zLogo/data/constants/all.const.dart';

class McuLogoWidget extends StatelessWidget {
  final double sizeLogoWidth;

  McuLogoWidget({
    this.sizeLogoWidth = sizeDefaultLogoWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      fileDefaultLogo,
      semanticsLabel: logoSemanticsLabel,
      width: sizeLogoWidth,
    );
  }
}
