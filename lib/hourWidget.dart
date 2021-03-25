import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'home.dart';

class HourWidget extends StatefulWidget {
  final String label;
  final bool active;
  final int position;
  final DateTime day;

  const HourWidget(
      {Key key,
      @required this.label,
      @required this.active,
      @required this.day,
      @required this.position})
      : super(key: key);
  @override
  _HourWidgetState createState() => _HourWidgetState();
}

class _HourWidgetState extends State<HourWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyStatefulWidget.of(context).addCounterBy1(widget.position, widget.day);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 90,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: MyStatefulWidget.of(context).selected ==
                  widget.position.toString() +
                      '|' +
                      DateFormat.yMd('pt_BR').format(widget.day)
              ? Colors.blue
              : Colors.grey,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
