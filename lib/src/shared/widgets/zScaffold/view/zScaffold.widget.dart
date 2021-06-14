import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenu/view/zDraweMenu.widget.dart';

class ZScaffoldWidget extends StatelessWidget {
  final Widget title;
  final bool centerTitle;
  final Widget body;
  final Widget drawer;

  ZScaffoldWidget({
    this.title,
    this.centerTitle = defaultCenterTitle,
    @required this.body,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: AppBar(
        title: title != null ? title : null,
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        elevation: elevation,
      ),
      drawer: drawer != null ? drawer : null,
      body: body,
    );
  }
}
