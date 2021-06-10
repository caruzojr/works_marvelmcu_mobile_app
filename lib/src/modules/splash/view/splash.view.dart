import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/utils/redirect_delay.util.dart';

import 'package:marvel_mcu_app/src/modules/splash/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    redirectDelayRouter(
      context,
      routeRedirect: Routes.homeRouter,
      milliseconds: redirectMilleseconds,
      replace: redirectReplacePage,
    );

    return Scaffold(
      body: Container(
        child: Center(
          child: ZLogoWidget(
            sizeLogoWidth: sizeLogoWidth,
          ),
        ),
      ),
    );
  }
}
