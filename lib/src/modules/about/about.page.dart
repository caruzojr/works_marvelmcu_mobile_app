import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenu/view/zDraweMenu.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: isLogoNegative,
      ),
      centerTitle: centerTitle,
      drawer: ZDrawerMenuWidget(),
      brightness: Brightness.light,
      body: Container(
        child: Center(
          child: Text("About Page"),
        ),
      ),
    );
  }
}
