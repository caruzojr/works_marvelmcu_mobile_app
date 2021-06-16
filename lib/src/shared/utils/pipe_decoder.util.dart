class PipeDecoderUtils {
  static String initialsIdiomaDecoder(String initialsIdioma) {
    switch (initialsIdioma) {
      case 'en':
        return "Inglês";
        break;
      case 'pt':
        return "Português";
        break;
      default:
        return "Não definido";
    }
  }

  static String situationDecoder(String initialsSituation) {
    switch (initialsSituation) {
      case 'Released':
        return "Lançado";
        break;
      case 'Post Production':
        return "Pós-Produção";
        break;
      default:
        return initialsSituation;
    }
  }
}
