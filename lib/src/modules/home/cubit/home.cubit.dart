import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/modules/home/usecases/get_mcu_films.usecase.dart';

part 'home.state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetMCUFilmsUseCase getMCUFilmsUseCase;

  HomeCubit({
    this.getMCUFilmsUseCase,
  }) : super(HomeInitial()) {
    _getMCUFilms();
  }

  _getMCUFilms() async {
    emit(HomeInProgress());

    try {
      List<MCUFilmsModel> data = await getMCUFilmsUseCase();
      emit(HomeSuccess(dataMCUFilms: data));
    } catch (error) {
      emit(HomeFailure(error: error.toString()));
    }
  }
}
