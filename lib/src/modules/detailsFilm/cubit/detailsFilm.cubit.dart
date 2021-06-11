import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:marvel_mcu_app/src/modules/home/data/models/mcufilms.model.dart';
import 'package:marvel_mcu_app/src/modules/home/usecases/get_mcu_films.usecase.dart';

part 'detailsFilm.state.dart';

class DetailsFilmCubit extends Cubit<DetailsFilmState> {
  final GetMCUFilmsUseCase getMCUFilmsUseCase;

  DetailsFilmCubit({
    this.getMCUFilmsUseCase,
  }) : super(DetailsFilmInitial()) {}
}
