import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/modules/home/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ZScaffoldWidget(
      body: Scaffold(
        body: Container(
          child: Center(
            child: Text(titleWelcome),
          ),
        ),
      ),
    );
  }
}
