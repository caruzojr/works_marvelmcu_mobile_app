import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';

class ZCardMCUFilmsWidget extends StatelessWidget {
  final MCUFilmsModel film;

  ZCardMCUFilmsWidget({
    Key key,
    this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(film.title),
    );
  }
}
