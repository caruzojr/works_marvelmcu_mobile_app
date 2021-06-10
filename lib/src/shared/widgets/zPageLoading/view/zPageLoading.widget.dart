import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/utils/redirect_delay.util.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zPageLoading/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zPageError/view/zPageError.widget.dart';

class ZPageLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    redirectDelayWidget(
      context,
      widgetRedirect: ZPageErrorWidget(),
      milliseconds: millisecondsRedirectError,
      replace: redirectDelayWidgetReplace,
    );

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(zPrimaryColor),
          ),
        ),
      ),
    );
  }
}
