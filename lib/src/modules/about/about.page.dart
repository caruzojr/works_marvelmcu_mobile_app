import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zActionButton/view/zActionButton.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDivider/view/zDivider.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/about/data/constants/all.const.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw '$notLaunch $url';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: isLogoNegativePage,
      ),
      centerTitle: centerTitle,
      brightness: Brightness.light,
      body: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Container(
          margin: EdgeInsets.only(top: zMarginTopScaffold),
          padding: EdgeInsets.symmetric(horizontal: zLayoutPaddingM),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titlePageModulo.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXXL),
                Text(
                  contentParagraph1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerM),
                Text(
                  alertMessageProject.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerL),
                ZDividerWidget(),
                SizedBox(height: zLayoutSpacerL),
                Text(
                  contentParagraph2.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerS),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: logoSizeWidth,
                      padding: EdgeInsets.only(right: zLayoutPaddingM),
                      child: Image.asset(logoTheMovieDB),
                    ),
                    Flexible(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contentParagraph3,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: zLayoutSpacerL),
                ZDividerWidget(),
                SizedBox(height: zLayoutSpacerL),
                Text(
                  contentParagraph4,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  actionTitle.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerS),
                Row(
                  children: [
                    ZActionButton(
                      textButton: projectTextButton,
                      iconButton: projectIconButton,
                      actionButton: () => _launchURL(projectLinkButton),
                    ),
                    SizedBox(width: zLayoutSpacerS),
                    ZActionButton(
                      textButton: layoutTextButton,
                      iconButton: layoutIconButton,
                      actionButton: () => _launchURL(layoutLinkButton),
                    ),
                    SizedBox(width: 8),
                    ZActionButton(
                      textButton: gitTextButton,
                      iconButton: gitIconButton,
                      actionButton: () => _launchURL(gitLinkButton),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
