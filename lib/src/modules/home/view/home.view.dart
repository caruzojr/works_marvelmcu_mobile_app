import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/modules/home/data/constants/all.const.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(titleWelcome),
        ),
      ),
    );
  }
}
