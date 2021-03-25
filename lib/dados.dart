import 'package:intl/intl.dart';

class Dados {
  static final Dados _singleton = Dados._internal();

  factory Dados() {
    return _singleton;
  }

  Dados._internal();

  String selected = '';

  void excuteSelect(int position, DateTime day) {
    selected = position.toString() + '|' + DateFormat.yMd('pt_BR').format(day);
    print('selecionou ' + selected);
  }
}
