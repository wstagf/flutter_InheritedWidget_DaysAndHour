import 'package:flutter/material.dart';

class HourWidget extends StatefulWidget {
  final String label;
  final bool active;

  const HourWidget({Key key, @required this.label, @required this.active})
      : super(key: key);
  @override
  _HourWidgetState createState() => _HourWidgetState();
}

class _HourWidgetState extends State<HourWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 100,
      height: 60,
      color: widget.active == true ? Colors.blue : Colors.grey,
      child: Center(
        child: Text(widget.label),
      ),
    );
  }
}
