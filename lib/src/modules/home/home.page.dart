import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:marvel_mcu_app/src/shared/services/impl/home.service.dart';
import 'package:marvel_mcu_app/src/modules/home/repositories/impl/home.repository.dart';
import 'package:marvel_mcu_app/src/modules/home/usecases/get_mcu_films.usecase.dart';
import 'package:marvel_mcu_app/src/modules/home/view/home.listener.dart';
import 'package:marvel_mcu_app/src/modules/home/cubit/home.cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(
        getMCUFilmsUseCase: GetMCUFilmsUseCase(
          repository: HomeRepository(
            service: HomeService(context: context),
          ),
        ),
      ),
      child: HomeListener(),
    );
  }
}
