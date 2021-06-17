import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_mcu_app/src/modules/home/view/widgets/zCardMCUFilms/view/zCardMCUFilms.widget.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/modules/home/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDrawerMenu/view/zDraweMenu.widget.dart';
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
      drawer: ZDrawerMenuWidget(),
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/imgBackground.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Color(0xFF000000).withOpacity(0.0),
                  Color(0xFF000000).withOpacity(1),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: zMarginTopScaffold),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: zLayoutPaddingM),
                        child: Text(
                          titleWelcome.toUpperCase(),
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      SizedBox(height: zLayoutSpacerXXL),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: zLayoutPaddingM),
                        child: Text(
                          titleSectionMCUFilms.toUpperCase(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      SizedBox(height: zLayoutSpacerM),
                      Container(
                        margin: EdgeInsets.only(bottom: zLayoutSpacerXL),
                        width: size.width,
                        height: sizeBoxAreaTimeLine,
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                SizedBox(width: zLayoutSpacerM),
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: zLayoutSpacerM),
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.dataMCUFilms.length,
                            itemBuilder: (context, index) {
                              return ZCardMCUFilmsWidget(
                                film: widget.dataMCUFilms[index],
                                indexPosition: index + 1,
                              );
                            },
                          ),
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
