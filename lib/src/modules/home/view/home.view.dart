import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_mcu_app/src/modules/home/view/widgets/zCardMCUFilms/view/zCardMCUFilms.widget.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/modules/home/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/modules/home/cubit/home.cubit.dart';

class HomeView extends StatefulWidget {
  final List<MCUFilmsModel> dataMCUFilms;

  HomeView({
    this.dataMCUFilms,
  });

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final HomeCubit bloc = BlocProvider.of<HomeCubit>(context);
    final Size size = MediaQuery.of(context).size;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: isLogoNegative,
      ),
      centerTitle: centerTitle,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: backgroundPage,
          ),
          Container(
            margin: EdgeInsets.only(top: zMarginTopScaffold),
            padding: EdgeInsets.all(zLayoutPaddingM),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: sizeBoxTitleWelcome,
                        child: Text(
                          titleWelcome.toUpperCase(),
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                color: zAccentColor,
                              ),
                        ),
                      ),
                      SizedBox(height: zLayoutSpacerXXL),
                      Container(
                        child: Text(
                          titleSectionMCUFilms.toUpperCase(),
                          style: Theme.of(context).textTheme.headline3.copyWith(
                                color: zAccentColor,
                              ),
                        ),
                      ),
                      SizedBox(height: zLayoutSpacerM),
                      Container(
                        width: size.width,
                        height: 200,
                        color: Colors.amber,
                        child: ListView.builder(
                          itemCount: widget.dataMCUFilms.length,
                          itemBuilder: (context, index) {
                            return ZCardMCUFilmsWidget(
                              film: widget.dataMCUFilms[index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
