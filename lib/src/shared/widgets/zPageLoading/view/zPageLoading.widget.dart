import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';

class ZPageLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
