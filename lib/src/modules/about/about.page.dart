import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: false,
      ),
      centerTitle: centerTitle,
      brightness: Brightness.light,
      body: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Text(
              "About Page",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
