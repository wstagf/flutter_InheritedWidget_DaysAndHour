import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'home.dart';

void main() {
  initializeDateFormatting('pt_BR', null).then((value) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Day And Hour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
