import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        body: MyStatefulWidget(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
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
                    day: DateTime.now().add(Duration(days: 5)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  final Widget child;

  const MyStatefulWidget({Key key, @required this.child}) : super(key: key);

  static MyStatefulWidgetState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>().data;
  }

  @override
  State<StatefulWidget> createState() {
    return MyStatefulWidgetState();
  }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  String selected = '';

  void addCounterBy1(int position, DateTime day) {
    setState(() {
      selected =
          position.toString() + '|' + DateFormat.yMd('pt_BR').format(day);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: widget.child,
      data: this,
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final MyStatefulWidgetState data;

  MyInheritedWidget({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
