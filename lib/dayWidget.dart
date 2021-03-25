import 'package:flutter/material.dart';
import 'package:selectdayandhour/hourWidget.dart';

class DayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HourWidget(active: false, label: '06:00'),
          HourWidget(active: false, label: '08:00'),
          HourWidget(active: false, label: '10:00'),
          HourWidget(active: false, label: '12:00')
        ],
      ),
    );
  }
}
