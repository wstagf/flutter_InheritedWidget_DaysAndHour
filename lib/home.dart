import 'package:flutter/material.dart';
import 'package:selectdayandhour/dayWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Selecione o horário"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DayWidget(
                  position: 1,
                  day: DateTime.now(),
                ),
                DayWidget(
                  position: 2,
                  day: DateTime.now().add(Duration(days: 1)),
                ),
                DayWidget(
                  position: 3,
                  day: DateTime.now().add(Duration(days: 2)),
                ),
                DayWidget(
                  position: 4,
                  day: DateTime.now().add(Duration(days: 3)),
                ),
                DayWidget(
                  position: 5,
                  day: DateTime.now().add(Duration(days: 4)),
                ),
                DayWidget(
                  position: 6,
                  day: DateTime.now().add(Duration(days: 5)),
                ),
                DayWidget(
                  position: 7,
                  day: DateTime.now().add(Duration(days: 6)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
