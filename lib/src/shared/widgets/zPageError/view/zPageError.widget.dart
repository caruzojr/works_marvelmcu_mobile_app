import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';

import 'package:marvel_mcu_app/src/shared/data/models/error.model.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zPageError/data/constants/all.const.dart';

class ZPageErrorWidget extends StatelessWidget {
  ErrorModel error;

  ZPageErrorWidget({
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (error == null) {
      error = ErrorModel(
        statusCode: statusCodeGenericError,
        reasonPhrase: descriptionGenericError,
      );
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(zLayoutPaddingL),
        color: Colors.redAccent,
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: zLayoutSpacerXXL),
                  ZLogoWidget(
                    isLogoNegative: isLogoNegativeDefault,
                    sizeLogoWidth: sizeLogoWidthDefault,
                  ),
                  SizedBox(height: zLayoutSpacerXXL),
                  Text(
                    titleSorry.toUpperCase(),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    descriptionSorry,
                    style: TextStyle(
                      fontSize: zFontSizeL,
                    ),
                  ),
                  SizedBox(height: zLayoutSpacerL),
                  error.statusCode != statusCodeGenericError
                      ? Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: sizeBoxError,
                                  child: Text(
                                    titleCodError.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    error.statusCode.toString(),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: sizeBoxError,
                                  child: Text(
                                    titleDescriptionError.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    error.reasonPhrase,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              width: size.width,
              child: Column(
                children: [
                  SvgPicture.asset(
                    iconAlertError,
                    width: sizeWidthIconAlertError,
                    color: zTextColorDefault,
                  ),
                  error.statusCode != statusCodeGenericError
                      ? Column(
                          children: [
                            SizedBox(height: zLayoutSpacerL),
                            Text(
                              error.statusCode.toString(),
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titleActions.toUpperCase()),
                  Text("BUTTON"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
