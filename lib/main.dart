import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';

import 'package:marvel_mcu_app/src/modules/splash/view/splash.view.dart';
import 'package:marvel_mcu_app/src/modules/home/view/home.view.dart';

void main() {
  runApp(MyApp());
}

final Map<String, WidgetBuilder> appRoutes = {
  Routes.homeRouter: (BuildContext context) => HomeView(),
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
      routes: appRoutes,
    );
  }
}
