import 'package:flutter/material.dart';

import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';
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
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "PROJETO CRIADO APENAS PARA ESTUDO DE UMA TECNOLODIA, TOTALMENTE INDEPENDENTE, SEM FINS LUCRATIVOS OU QUALQUER VÍNCULO COM A MARVEL STUDIOS"
                      .toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "Sobre as informações exibidas na aplicação".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Os dados exibidos de cada filme, foram consumidos de um serviço disponibilizado pela The Movie DB de forma gratuita.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "Pilares do Projeto".toUpperCase(),
                  style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "A ideia desde o início do projeto era criar uma organização muito parecida com o que as empresas de mercado estão atuando no momento. Por isso escolhi (mesmo que trabalhando sozinho no projeto), aplicar a vivência que aprendi em algumas empresas em que trabalhei como desenvolvedor.\n\nAo mapear todo um processo na construção de um projeto, defini 5 pilares que julgo de extrema importancia para o sucesso de um projeto, e com isso apliquei este conceito no projeto.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "1. Planejamento".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "A ideia desde o início do projeto era criar uma organização muito parecida com o que as empresas de mercado estão atuando no momento. Por isso escolhi (mesmo que trabalhando sozinho no projeto), aplicar a vivência que aprendi em algumas empresas em que trabalhei como desenvolvedor.\n\nAo mapear todo um processo na construção de um projeto, defini 5 pilares que julgo de extrema importancia para o sucesso de um projeto, e com isso apliquei este conceito no projeto.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "2. Protótipos".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Momento onde tudo que foi planejado começa a tomar as devidas formas e cores, ajudando assim, a validar a eficiência cada etapa, navegação e a usabilidade do projeto.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "3. Arquitetura".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Uma boa arquitetura define o sucesso de um projeto, como ele será escalado em um futuro não tão distante, e surgindo necessidades de novas features, novas pessoas trabalhando no projeto, ou até mesmo, a troca de um serviço que foi descontinuado por fornecedor.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "4. To Do List".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Quebrar o projeto em atividades ajuda no alinhamento das entregas, no tempo de execução de cada atividade e até mesmo dar a visão da evolução, ou até mesmo mostrar atividades que não foram percebidas no momento do planejamento.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "5. Desenvolvimento".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "É o momento em que de fato tudo que foi planejado, conversado e alinhado começa a virar linhas de códigos. Dentro deste conceito maior que é o desenvolvimento, podemos também criar pequenos outros 'pilares' para quebrar ainda mais a fase do desenvolvimento, como por exemplo o momento em que tudo é testado, ou até mesmo na hora de gerar uma release.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "O primeiro pilar".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Planejamento".toUpperCase(),
                  style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Como a ideia era colocar em prática alguns conhecimentos ao desenvolver um projeto em Flutter, planejei uma estrutura bem enxuta para esta primeira versão do projeto, e assim, evoluindo com o tempo, com mudanças na estrutura, conceitos e até mesmo novas features.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "Entregas em MVP".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),
                Text(
                  "Com um planejamento definido, fechei o primeiro MVP do projeto. Com funcionalidades básicas para para fechar uma aplicação entregável.\n\nOutros MVPs no projeto com  melhorias para cada evolução no código, ou até mesmo em conceitos na arquitetura que forem surgindo no desenvolvimento.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: zLayoutSpacerXL),
                Text(
                  "Ambientes".toUpperCase(),
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: zLayoutSpacerXS),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: (size.width / 2) - 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Local".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: zLayoutSpacerXS),
                          Text(
                            "localhost:3000\n\nAmbiente local (Mock) com uma pequena lista de filmes do universo cinematografico da Marvel.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: (size.width / 2) - 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Movie DB".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: zLayoutSpacerXS),
                          Text(
                            "api.themovedb.org/3/move\n\nAmbiente externo consumindo dados da API do site The Move DB, com a funcionalidade de puxar todos os detalhes dos filmes conforme a lista apontada no serviço local (API).",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: zLayoutSpacerXL),
                // Text(
                //   "Créditos".toUpperCase(),
                //   style: Theme.of(context).textTheme.bodyText2.copyWith(
                //       color: Colors.black, fontWeight: FontWeight.bold),
                // ),
                // SizedBox(height: zLayoutSpacerXS),
                // Text(
                //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus ultricies molestie. Maecenas luctus leo odio, ac venenatis diam luctus ac. Maecenas ut dictum massa. Cras in maximus ipsum. Donec volutpat porttitor tristique. Praesent vel magna sed magna ultrices varius. Proin urna urna, dictum ac convallis ac, blandit et orci. Nullam convallis mi vitae tellus venenatis, sagittis dignissim sapien tempor. Nam fringilla tellus arcu, sit amet suscipit lectus ultricies in.",
                //   style: Theme.of(context)
                //       .textTheme
                //       .bodyText2
                //       .copyWith(color: Colors.black),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
