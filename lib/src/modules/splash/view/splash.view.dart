import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/utils/redirect_delay.util.dart';

import 'package:marvel_mcu_app/src/modules/splash/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    redirectDelayRouter(
      context,
      routeRedirect: Routes.homeRouter,
      milliseconds: redirectMilleseconds,
      replace: redirectReplacePage,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
