import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zActionButton/view/zActionButton.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zDivider/view/zDivider.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zLogo/view/zLogo.widget.dart';
import 'package:marvel_mcu_app/src/shared/widgets/zScaffold/view/zScaffold.widget.dart';

import 'package:marvel_mcu_app/src/modules/about/data/constants/all.const.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ZScaffoldWidget(
      title: ZLogoWidget(
        sizeLogoWidth: sizeLogoWidth,
        isLogoNegative: false,
      ),
      centerTitle: centerTitle,
      brightness: Brightness.light,
      body: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Container(
          margin: EdgeInsets.only(top: zMarginTopScaffold),
          padding: EdgeInsets.symmetric(horizontal: zLayoutPaddingM),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titlePageModulo.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXXL),
                Text(
                  "Este não é um projeto realizado oficialmente para Marvel Studios ou muito menos foi comercializado em lojas oficiais de aplicaticos.\n\nApenas é um projeto para ESTUDO de uma aplicação mobile utlizando FLUTTER como tecnologia no desenvolvimento, e o tema escolhido foi o mundo MCU da Marvel, mostrando toda a cronologia e detalhes de cada filme.\n\nEntão:",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerM),
                Text(
                  "PROJETO CRIADO APENAS PARA ESTUDO DE UMA TECNOLODIA, TOTALMENTE INDEPENDENTE, SEM FINS LUCRATIVOS OU QUALQUER VÍNCULO COM A MARVEL STUDIOS"
                      .toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerL),
                ZDividerWidget(),
                SizedBox(height: zLayoutSpacerL),
                Text(
                  "Sobre as informações exibidas na aplicação".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerS),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 16),
                      child: SvgPicture.asset(
                        "assets/images/logo_theMovieDB.svg",
                        color: Colors.black,
                        width: 50,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Os dados exibidos de cada filme, foram consumidos de um serviço disponibilizado pela The Movie DB de forma gratuita.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: zLayoutSpacerL),
                ZDividerWidget(),
                SizedBox(height: zLayoutSpacerL),
                Text(
                  "Clique no link abaixo para visualizar toda a etapa de construção do projeto, a arquitetura utilizada, o layout, a metodologia utilizada na gestão de tarefas, e até mesmo ter acesso ao repositório do projeto e telas no figma.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "Ações".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerS),
                Row(
                  children: [
                    ZActionButton(
                      textButton: "Apresentação\ndo Projeto",
                      iconButton: "assets/icons/icon_file.svg",
                      actionButton: () {
                        print("pdf");
                      },
                    ),
                    SizedBox(width: 8),
                    ZActionButton(
                      textButton: "Protótipo",
                      iconButton: "assets/icons/icon_figma.svg",
                      actionButton: () {
                        print("figma");
                      },
                    ),
                    SizedBox(width: 8),
                    ZActionButton(
                      textButton: "Repositório GIT",
                      iconButton: "assets/icons/icon_git.svg",
                      actionButton: () {
                        print("git");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
