class IdiomaUtils {
  static String decoder(String siglaIdioma) {
    switch (siglaIdioma) {
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
}
