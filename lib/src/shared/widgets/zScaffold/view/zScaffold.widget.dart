import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/data/constants/all.const.dart';

class ZScaffoldWidget extends StatelessWidget {
  final Widget title;
  final bool centerTitle;
  final Widget body;
  final Widget drawer;
  final Brightness brightness;

  ZScaffoldWidget({
    this.title,
    this.centerTitle = defaultCenterTitle,
    @required this.body,
    this.drawer,
    this.brightness = Brightness.light,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: title != null ? title : null,
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        elevation: elevation,
        brightness: brightness,
      ),
      drawer: drawer != null ? drawer : null,
      body: body,
    );
  }
}
