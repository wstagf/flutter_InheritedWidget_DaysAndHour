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
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    HourWidget(
                        position: 1, label: "06:00", active: false, day: day),
                    HourWidget(
                        position: 2, label: "08:00", active: false, day: day),
                    HourWidget(
                        position: 3, label: "09:00", active: false, day: day),
                    HourWidget(
                        position: 4, label: "10:00", active: false, day: day),
                    HourWidget(
                        position: 5, label: "11:00", active: false, day: day),
                    HourWidget(
                        position: 6, label: "12:00", active: false, day: day),
                    HourWidget(
                        position: 7, label: "13:00", active: false, day: day),
                    HourWidget(
                        position: 8, label: "14:00", active: false, day: day),
                    HourWidget(
                        position: 9, label: "15:00", active: false, day: day),
                    HourWidget(
                        position: 10, label: "16:00", active: false, day: day),
                    HourWidget(
                        position: 11, label: "17:00", active: false, day: day),
                    HourWidget(
                        position: 12, label: "18:00", active: false, day: day),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
