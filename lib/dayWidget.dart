import 'package:flutter/material.dart';
import 'package:selectdayandhour/hourWidget.dart';
import 'package:intl/intl.dart';

class DayWidget extends StatelessWidget {
  final int position;
  final DateTime day;

  const DayWidget({Key key, @required this.position, @required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: position.isEven ? Colors.grey[300] : Colors.white,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 130,
              height: 60,
              color: Colors.blue[200],
              child: Center(
                child: Text(DateFormat.MMMEd('pt_BR').format(day)),
              ),
            ),
            HourWidget(label: "06:00", active: false),
            HourWidget(label: "08:00", active: false),
            HourWidget(label: "09:00", active: false),
            HourWidget(label: "10:00", active: false),
            HourWidget(label: "11:00", active: false),
            HourWidget(label: "12:00", active: false),
            HourWidget(label: "13:00", active: false),
            HourWidget(label: "14:00", active: false),
            HourWidget(label: "15:00", active: false),
            HourWidget(label: "16:00", active: false),
            HourWidget(label: "17:00", active: false),
            HourWidget(label: "18:00", active: false),
          ],
        ),
      ),
    );
  }
}
