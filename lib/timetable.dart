import 'package:flutter/material.dart';
import 'package:newapp/drawers.dart';
import 'package:weekly_timetable/weekly_timetable.dart';
import './drawers.dart';

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Timetable'),
        debugShowCheckedModeBanner: false
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawers(),
      body: WeeklyTimeTable(cellSelectedColor: Colors.deepPurpleAccent,),
    );
  }
}