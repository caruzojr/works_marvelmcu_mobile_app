import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:marvel_mcu_app/src/modules/about/about.page.dart';

import 'package:marvel_mcu_app/src/themes/light.theme.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';

import 'package:marvel_mcu_app/src/modules/splash/view/splash.view.dart';
import 'package:marvel_mcu_app/src/modules/home/home.page.dart';
import 'package:marvel_mcu_app/src/modules/detailsFilm/detailsFilm.page.dart';

void main() {
  runApp(MyApp());
}

final Map<String, WidgetBuilder> appRoutes = {
  Routes.splashRouter: (BuildContext context) => SplashView(),
  Routes.homeRouter: (BuildContext context) => HomePage(),
  Routes.aboutRouter: (BuildContext context) => AboutPage(),
  Routes.detailsFilmRouter: (BuildContext context) => DetailsFilmPage(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Marvel MCU',
      theme: lightTheme(),
      //initialRoute: Routes.splashRouter,
      initialRoute: Routes.aboutRouter,
      routes: appRoutes,
    );
  }
}
