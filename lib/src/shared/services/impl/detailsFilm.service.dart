import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/data/models/error.model.dart';
import 'package:marvel_mcu_app/src/shared/utils/nav.util.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zPageError/view/zPageError.widget.dart';

import 'package:marvel_mcu_app/src/shared/services/idetailFilm.service.dart';

class DetailsFilmService implements IDetailsFilmService {
  final BuildContext context;

  DetailsFilmService({
    @required this.context,
  });

  @override
  Future<http.Response> getDetailsFilm(int idFilm) async {
    var endpoint = Uri.https(
      '${BaseURL.urlAPITheMoveDB}',
      '${EndPoints.detailsFilm}/$idFilm',
      {
        "${EnvData.apiKeyText}": "${EnvData.apiKey}",
        "${EnvData.languageText}": "${EnvData.language}"
      },
    );

    final response =
        await http.get(endpoint).timeout(Duration(seconds: 10), onTimeout: () {
      push(context, ZPageErrorWidget(), replace: true);
      return null;
    });

    if (response.statusCode != 200) {
      final ErrorModel error = ErrorModel(
        statusCode: response.statusCode,
        reasonPhrase: response.reasonPhrase,
      );

      push(context, ZPageErrorWidget(error: error), replace: true);
    }

    return response;
  }

  @override
  Future<http.Response> getClassificationsFilm(int idFilm) async {
    var endpoint = Uri.https(
      '${BaseURL.urlAPITheMoveDB}',
      '${EndPoints.detailsFilm}/$idFilm/release_dates',
      {
        "${EnvData.apiKeyText}": "${EnvData.apiKey}",
        "${EnvData.languageText}": "${EnvData.language}"
      },
    );

    final response =
        await http.get(endpoint).timeout(Duration(seconds: 10), onTimeout: () {
      push(context, ZPageErrorWidget(), replace: true);
      return null;
    });

    if (response.statusCode != 200) {
      final ErrorModel error = ErrorModel(
        statusCode: response.statusCode,
        reasonPhrase: response.reasonPhrase,
      );

      push(context, ZPageErrorWidget(error: error), replace: true);
    }

    return response;
  }

  @override
  Future<http.Response> getCreditsFilm(int idFilm) async {
    var endpoint = Uri.https(
      '${BaseURL.urlAPITheMoveDB}',
      '${EndPoints.detailsFilm}/$idFilm/credits',
      {
        "${EnvData.apiKeyText}": "${EnvData.apiKey}",
        "${EnvData.languageText}": "${EnvData.language}"
      },
    );

    final response =
        await http.get(endpoint).timeout(Duration(seconds: 10), onTimeout: () {
      push(context, ZPageErrorWidget(), replace: true);
      return null;
    });

    if (response.statusCode != 200) {
      final ErrorModel error = ErrorModel(
        statusCode: response.statusCode,
        reasonPhrase: response.reasonPhrase,
      );

      push(context, ZPageErrorWidget(error: error), replace: true);
    }

    return response;
  }
}
