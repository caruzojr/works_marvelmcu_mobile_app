import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/shared/widgets/zPageLoading/view/zPageLoading.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zPageError/view/zPageError.widget.dart';

import 'package:marvel_mcu_app/src/modules/home/cubit/home.cubit.dart';
import 'package:marvel_mcu_app/src/modules/home/view/home.view.dart';

class HomeListener extends StatefulWidget {
  @override
  _HomeListenerState createState() => _HomeListenerState();
}

class _HomeListenerState extends State<HomeListener> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (BuildContext context, HomeState state) {
        if (state is HomeSuccess) {
          //return ZPageErrorWidget(error: state.props[0]);
          return HomeView(
            dataMCUFilms: state.dataMCUFilms,
          );
        } else if (state is HomeInProgress) {
          return ZPageLoadingWidget();
        } else {
          return Container();
        }
      },
    );
  }
}
