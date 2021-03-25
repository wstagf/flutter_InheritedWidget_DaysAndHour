class Dados {
  static final Dados _singleton = Dados._internal();

  factory Dados() {
    return _singleton;
  }

  Dados._internal();

  String selected = '';

  void excuteSelect(String code, DateTime day) {
    selected = code;
  }
}
