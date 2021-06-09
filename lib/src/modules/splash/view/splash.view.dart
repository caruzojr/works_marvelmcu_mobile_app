import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/utils/redirect_delay.util.dart';

import 'package:marvel_mcu_app/src/modules/splash/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/mcuLogo/view/mcuLogo.widget.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    redirectDelay(
      context,
      routeRedirect: Routes.homeRouter,
      milliseconds: redirectMilleseconds,
      replace: redirectReplacePage,
    );

    return Scaffold(
      body: Container(
        child: Center(
          child: McuLogoWidget(
            sizeLogoWidth: sizeLogoWidth,
          ),
        ),
      ),
    );
  }
}
