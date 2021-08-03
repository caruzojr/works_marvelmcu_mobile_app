import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:marvel_mcu_app/src/shared/data/constants/routes.const.dart';
import 'package:marvel_mcu_app/src/shared/data/models/error.model.dart';
import 'package:marvel_mcu_app/src/shared/services/ihome.service.dart';
import 'package:marvel_mcu_app/src/shared/utils/nav.util.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zPageError/view/zPageError.widget.dart';

class HomeService implements IHomeService {
  final BuildContext context;

  HomeService({
    @required this.context,
  });

  @override
  Future<http.Response> getMCUFilms() async {
    var endpoint = Uri.http('${BaseURL.url}', '${EndPoints.mcu}');

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

    //await Future.delayed(Duration(milliseconds: 5000), () {});

    return response;
  }
}
